
#include <iostream>
#include "stdlib.h"
#include <string>
#include <limits.h>	//eg. the bounds of integer
#include <time.h>
#include <cstddef>
#include <fstream> //for checking whether file does not exist (in method main).

#include "Utils.h"
#include "Life.h"
#include "MapItem.h"
#include "Map.h"
#include "World.h"
#include "Creature.h"
#include "ConsumerI.h"
#include "ConsumerII.h"
#include "Vegetal.h"
#include "Values.h"


// TODO wenn Welt voll mit nur einer Art => "spiel"-ende

/*
 * Constructor
 */


World::World(int _width, int _height, int nC1, int nC2, int mstep, int nV) {
	
	// set world height and width
	wwidth  = _width;
	wheight = _height;

	//tell random to generate random numbers
	srand((unsigned)time(NULL));

	// 2 DO Logfile
	// log = "";

	//save maximal amount of steps
    maxsteps = mstep;

    // initialize Map
    mp = new Map(_width, _height);


    // initialize life forms
    initializeCreature(nC1, nC2, nV);

	// print fist screen
	mp->print(false);

    // start life of creatures.
    run();

    // save / print the log file.
    // std::cout << log;
}



/**
 * initialize the creatures.
 */
bool World::initializeCreature(int nC1, int nC2, int nV) {

	Coordinate c;
	

	// create nV Vegetals 
    for (int i = 0; i < nV; i++) {
    	c = getRandomFreePosition();
		if (!createNewVegetal(c)) {							
			exit_error(2);
		}
    }

	// create consumerI
    for (int i = 0; i < nC1; i++) {
    	c = getRandomFreePosition();
		if (!createNewConsumerI(c)) {
			exit_error(3);
		}
	}

    //create ConsumerII:
    for (int i = 0; i < nC2; i++) {
    	c = getRandomFreePosition();
		if (!createNewConsumerII(c)) {
			exit_error(4);
		}
    }
	return true;
}


int World::testfree() {
	Coordinate d;											// cell to set the living (init value is (-1,-1)
	int testam = 0;
	for (d.x = 0; d.x < wwidth; d.x++) {
		for (d.y = 0; d.y < wwidth; d.y++) {
			if (cell_is_empty(d)) {
				testam++;
			}
		}
	}
	int free_cells = mp->getAmountFreePosition();			// only free_cells are empty
	if (free_cells != testam) {

	}
	return testam;
}


Coordinate World::getRandomFreePosition(){

	Coordinate c;											// cell to set the living (init value is (-1,-1)
	testfree();
	int free_cells = mp->getAmountFreePosition();			// only free_cells are empty
	if (free_cells == 0) {
		return c;											// return false if no free cells left 
	}
	
	int indexFree = getRandomNumber(1, free_cells);		// find the indexFree free cell
	
    // counter
    int AmountOfPassedFreePos = 0;							// free cells passed

	// find the indexFree empty cell
	for (c.x = 0; c.x < wwidth; c.x++) {
		for (c.y = 0; c.y < wheight; c.y++) {
			if (cell_is_empty(c)) {
				if (++AmountOfPassedFreePos == indexFree) { 	// is this the indexFree position?
					return c;
				}
			}
		}
    }

	// we reached the end of the world did not find indexFree empty cells
	// this should never happen
	exit_error(1);
	// not needed just to disable complier waring message
	return c;
}



/**
 * start the simulation 
 */
void World::run() {
	Coordinate c;

    for (step = 0; step < maxsteps; step++) {

        performOneStep();

		// DEBUG
#ifdef DEBUG
		testfree();
#endif

        // every X rounds a new plant grows in a random place
		// if amound of free cells > 0
		if (mp->getAmountFreePosition()>0) {
			if (step % (stepsForNewVegetal - 1) == 0) {
				c = getRandomFreePosition();
				createNewVegetal(c);
			}
		}
		// update the map
		mp->print(false);

    }
}


// create a new Vegetal at the position _c
// return true on success
bool World::createNewVegetal(Coordinate _c) {
	if (_c && cell_is_empty(_c)) {
		mp->insertMonster(new Vegetal(_c), _c);
		return true;
	}
	return false;
}


// create a new ConsumerI at the position _c
// return true on success
bool World::createNewConsumerI(Coordinate _c) {
	if (_c && cell_is_empty(_c)) {
		mp->insertMonster(new ConsumerI(_c), _c);
		return true;
	}
	return false;
}

// create a new ConsumerII at the position _c
// return true on success
bool World::createNewConsumerII(Coordinate _c) {
	if (_c && cell_is_empty(_c)) {
		mp->insertMonster(new ConsumerII(_c), _c);
		return true;
	}
	return false;
}


// reset consumers to "walkable true" to ensure it can walk/interact.
void World::setAllConsumersWalkable() {
	Coordinate c;

	for (c.x = 0; c.x < wwidth; c.x++) {
		for (c.y = 0; c.y < wheight; c.y++) {
			if (!cell_is_empty(c)) {
				if (isACreature(c)) {
					mp->getMapItem(c)->monster->setWalkable(true);
				}
			}
		}
	}
}



void World::performOneStep() {
	
	Coordinate c, newPosition, deltaPos;

    //kgv berechenen, aktuelles level modulo kgv rechnen	TODO!!!	
    int kgv = 2;

    for (int noch = 0; noch < kgv; noch++) {

#ifdef DEBUG
        std::cout << "step" << step << "." << noch % 2 << "\n";
#endif

        // reset consumers to "walkable true" to ensure it can walk.
        // set walkable false is used later inside the loops to avoid that
        // a monster can move twice.
		setAllConsumersWalkable();


        // go through the map and perform an action if a cell is occupied by a
        // Creature.
        for (c.x = 0; c.x < wwidth; c.x++) {
            for (c.y = 0; c.y < wheight; c.y++) {

				
            	//TODO: aendern damit hier auch der vom user definierte speed drin vorkommt
                if (
					(isAConsumerI(c) || (isAConsumerII(c) && noch % kgv == 0))
                        && (mp->getMapItem(c)->monster->isWalkable())) {

                    //save current Life as Creature and remove monster from old position.
                    Creature* currentCreature = (Creature*) (mp->getMapItem(c)->monster);

					// to ensure all emisions are form other livings, the current consumer
					// has to be temorary removed from the map
					mp->removeMonster(c);

					//compute new position and delta values.
                    // calculate the best movement/direction (returns plusX,plusY = 0,1,-1)
					bool creatureSmellsSomthing = smell(currentCreature, &deltaPos);

                    //calculate the new position modulo map size because creatures can pass the edge.
                    newPosition.x = modulo(c.x + deltaPos.x, wwidth);
					newPosition.y = modulo(c.y + deltaPos.y, wheight);


                    int index = -2;
					if (creatureSmellsSomthing) {
						//index of method interact in Creature. Tells how to
						//interact with the new coordinate
						index = currentCreature->interact(currentCreature, mp->getMapItem(newPosition)->monster);
					}
					
					switch (index) {

					case -2:				// do not move and do not interact
						mp->insertMonster(currentCreature, c);
						break;
					case -1:				// walk: move creatur to new position
						mp->insertMonster(currentCreature, newPosition);
						break;
					case 1:					// eat something and walk
						// eat the meal.
						mp->deleteMonster(newPosition);	
						// go to new position.
						mp->insertMonster(currentCreature, newPosition);
						break;
					case 0:					// (try) reproduce don't walk
						// back on map											
						mp->insertMonster(currentCreature, c);
						
						// TODO in eine eigene Routine
						Creature a = *((Creature*)(mp->getMapItem(newPosition)));
						Creature b = *currentCreature;

#ifdef DEBUG
						std::cout << "zeit1" << a.getPregnantTime() << "\n";
#endif
						// TODO noch pr�fen formel
						if (a.getLifeTime() > a.getMaxLifeTime() / 4
							&& b.getLifeTime() > b.getMaxLifeTime() / 4
							&& a.getPregnantTime() >= a.getMaxPregnantTime() + 1
							&& b.getPregnantTime() >= b.getMaxPregnantTime() + 1) {

#ifdef DEBUG
							std::cout << "zeit2: " << a.getPregnantTime() << "\n";
#endif
							currentCreature->setPregnant(true);
#ifdef DEBUG
							std::cout << "zeit3: " << a.getPregnantTime() << "\n";
#endif
						}
						break;
					} // end switch
					

                	//set walkable false because this creature should be unable to move/interact once again
                	//in this step.
                    currentCreature->setWalkable(false);

                	//TODO: nicht mehr hardcoden, ggt etc.
                    if (noch % 2 == 0) {
                        timePassed(currentCreature);
                    }
#ifdef DEBUG1
					mp->print(false);
#endif
                } 
            }
        }
    }
}




/**
 *
 * @param smellingCreature the creature which smells somenthing
 * @param plusXY 
 * @return true if the smellingCreature smells something.
 *         deltaValue for movement in plusXY
 */
// TODO wenn creatur nicht in die gew�nscht richtung laufen kann
//      sollte ein anderer wert f�r plusxy zur�ckgegeben werden
//      2.bester, 3. bester etc. 
bool World::smell(Creature* smellingCreature, Coordinate* plusXY) {

	Coordinate bestDestination;
	Coordinate oldCoordinate = smellingCreature->getPos();

	
	
	int bestScore = INT_MIN;
	bool semllSomeThing = false;

	//the range of smell detection of the current creature
    int range = smellingCreature->getRangeOfSmellDetection();


    //the values for the computation of the index which are independent from the
    //special fields.
    int TWF  = (*smellingCreature).getTimeWithoutFood();
    int MTWF = (*smellingCreature).getMaxTimeWithoutFood();


    //go through all field that the current creature is able to detect.
    for(int x = oldCoordinate.x - range; x <= oldCoordinate.x + range; x ++){
        for(int y = oldCoordinate.y - range; y <= oldCoordinate.y + range; y ++){

        	Coordinate coord;
        	coord.x = modulo(x, wwidth);
        	coord.y = modulo(y, wheight);

        	int FE, PE, STE;

        	// compute Food, predator, same type emission depending on type of
        	// smellingCreature.
        	if(isAConsumerI(smellingCreature)){
        		FE  = mp->getMapItem(coord)->vEmission;				// food emission
        		PE  = mp->getMapItem(coord)->c2Emission;			// predator emission
        		STE = mp->getMapItem(coord)->c1Emission;			// same typ emission
        	} else {
        		FE  = mp->getMapItem(coord)->c1Emission;
        		PE  = 0;
        		STE = mp->getMapItem(coord)->c2Emission;
        	}

        	// compute score
            int score = FE * (TWF / MTWF) + (STE - PE) * ((MTWF - TWF) / MTWF);

            // if the current score is better than all scores before
			// TODO wenn zwei scores = sind, zufall ob neu oder alt
			// TODO >=, >, ????  (>= liefert immer die h�chstern werte f�r x,y
			//                    >          immer die kleinsten werte 
			//                               radom ? oder alg. �berlegen
            if(score >= bestScore){
            	bestScore = score;
            	bestDestination.x = x;
            	bestDestination.y = y;
				semllSomeThing = !((FE == 0) && (STE == 0) && (PE == 0));
			}
        }
    }
	// nothing to smell take a random value
	if (!semllSomeThing && bestScore==0) {
		bestDestination.x = -1 + getRandomNumber(0, 2);
		bestDestination.y = -1 + getRandomNumber(0, 2);
		*plusXY = bestDestination;
		return (false);
	} 
	
    //calculate destination and write it into the values posX and posY
	bestDestination.x = sign((bestDestination.x - oldCoordinate.x));
	bestDestination.y = sign((bestDestination.y - oldCoordinate.y));
	*plusXY = bestDestination;
    
	return (semllSomeThing);
}

// TODO trenn in Pregnant
// und food 
void World::timePassed(Creature* d) {
	
	Coordinate c;

    //increment values
    (*d).incrementTimeWithoutFood();
    (*d).incrementLifeTime();

    //birth
    if ((*d).increasePregnantTime()) {
		
		for (int x = -1; x <= 1; x++) {
            for (int y = -1; y <= 1; y++) {
				
                //TODO: getX und getY refreshen und so.
				c.x = modulo((*d).getX() + x, wwidth);
				c.y = modulo((*d).getY() + y, wheight);
                
                if (cell_is_empty(c)) {
                    if (isAConsumerI(c)) {
                    	mp->insertMonster(new ConsumerI(c), c);
#ifdef DEBUG
						std::cout << "-----c1 hat ein Kind bekommen---\n";
#endif
					} else if (isAConsumerII(c)) {
                    	mp->insertMonster(new ConsumerII(c), c);
#ifdef DEBUG
                        std::cout << "-----C2 hat ein Kind bekommen---\n";
#endif
                    }

                    //break.
                    x = 100;
                    y = 100;
                    break;
                }
            }
        }
    }


    if ((*d).getTimeWithoutFood() > (*d).getMaxTimeWithoutFood()
            || (*d).getLifeTime() > (*d).getMaxLifeTime()) {

#ifdef DEBUG
        std::cout << "I died!\n";
        std::cout << "current time without food: " << (*d).getTimeWithoutFood() << "\n" << "current life time: " << (*d).getLifeTime() << "\n";
#endif
		mp->deleteMonster((*d).getPos());
    }
}

/**
 *	tests if a creatue reaches it's maximum LifeTime
 *	or starve due to lack of food
 */
bool World::creaturMustDie(Creature* d) {
	if ((*d).getTimeWithoutFood() > (*d).getMaxTimeWithoutFood()) {
		return true;
	}
	if ((*d).getLifeTime() > (*d).getMaxLifeTime()) {
		return true;
	}
	return false;
}


// TO DO einlesen einbinden
// TO DO Fehlermeldungen nach util auslagern

int main(int _anzParam, char** strings) {

	int height;
	int width;
	int maxNumberOfSteps;
	int numberConsumer1;
	int numberConsumer2;
	// to do
	int numberVegetal = 5;
	
    //strain("bla");
    //	strain("Vegetal.o");
    //strain("Debug");

    //	return 0;
    /*
     * parameter syntax (8):
     *	1	[int]	height
     *	2	[int]	width
     *	3	[int]	maximal number of steps in one simulation
     *	4	[int]	number of consumer 1 at the beginning
     *	5	[int]	number of consumer 2 at the beginning
     *	6	[char*]	path to vegetal.txt
     *	7	[char*]	path to consumer1.txt
     *	8	[char*]	path to consumer2.txt
     */
    std::string errorMessage =
            (std::string) "Recall World with 8 parameters like \n" +
            (std::string) "World [int] [int] [int] [int] [int] [char*] [char*] [char*]\n\n" +
            (std::string) "1st Param	[height]\n" +
			(std::string) "2nd param	[width]\n" +
            (std::string) "3rd param	[maxNumberOfStepsInSimulation]\n" +
			(std::string) "4th param	[NumberOfC1AtTheBeginning]\n" +
            (std::string) "5th param	[NumberOfC2AtTheBeginning]\n" +
            (std::string) "6th param	[pathToVegetal.txt]\n" +
			(std::string) "7th param	[pathToConsumerI]\n"+
            (std::string) "8th param	[consumer2]\n";


    //if the amount of parameters is not equal to 8 + 1.
    if (_anzParam != 9) {
        //print error message
        std::cout << "Missing arguments.\n" << errorMessage;
//		goto exit_out;
    }

    //save integer values
	//TO DO geht das nicht einfacher ?
    height = atoi(((std::string)strings[1]).c_str());
    width = atoi(((std::string)strings[2]).c_str());
    maxNumberOfSteps = atoi(((std::string)strings[3]).c_str());
    numberConsumer1 = atoi(((std::string)strings[4]).c_str());
    numberConsumer2 = atoi(((std::string)strings[5]).c_str());


    //check whether integer values are correct (greater than 0)
    if (height <= 0 || width <= 0 || maxNumberOfSteps <= 0
            || numberConsumer1 < 0 || numberConsumer2 < 0) {
        //print error message
        std::cout << "Wrong arguments.\n" << errorMessage;
//		goto exit_out;
	}

    if (!is_file(strings[6]) || !is_file(strings[8]) || !is_file(strings[7])) {
        std::cout << "file does not exist or is a directory" << strings[6];
//		goto exit_out;
    }
	
    // * test
	clear_screen();

	new World(width, height, numberConsumer1, numberConsumer2, maxNumberOfSteps, numberVegetal);

//exit_out:
	

	wait_for_keypressed();
    return 0;
}


// check if cell is empty
bool World::cell_is_empty(Coordinate c) {
	return (mp->getMapItem(c)->monster == NULL);
}


bool World::isACreature(Coordinate _pos){
	if (cell_is_empty(_pos)) return false;
	return isAConsumerI(_pos) || isAConsumerII(_pos);
}

bool World::isAConsumerI(Coordinate _pos){
	if (cell_is_empty(_pos)) return false;
	return isAConsumerI(mp->getMapItem(_pos)->monster);
}

bool World::isAConsumerI(Life* _life){
	if (_life == NULL) return false;
	return _life->getCellChar() == 'c';
}

bool World::isAConsumerII(Coordinate _pos){
	if (cell_is_empty(_pos)) return false;
	return isAConsumerII(mp->getMapItem(_pos)->monster);
}

bool World::isAConsumerII(Life* _life){
	if (_life == NULL) return false;
	return _life->getCellChar() == 'C';
}
bool World::isAVegetal(Coordinate _pos){
	if (cell_is_empty(_pos)) return false;
	return mp->getMapItem(_pos)->monster->getCellChar() == 'v';
}

