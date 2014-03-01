
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

#define DEBUG
#define CLEAR_SCREEN

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
		if (!c) {							// no more empty cells
			return false;
		}
    	mp->insertMonster(new Vegetal(c.x, c.y), c.x, c.y);
    }
	// create consumerI
    for (int i = 0; i < nC1; i++) {
    	c = getRandomFreePosition();
		if (!c) {							// no more empty cells
			return false;
		}
		mp->insertMonster(new ConsumerI(c.x, c.y),c.x, c.y);
    }
    //create ConsumerII:
    for (int i = 0; i < nC2; i++) {
    	c = getRandomFreePosition();
		if (!c) {							// no more empty cells
			return false;
		}
		mp->insertMonster(new ConsumerII(c.x, c.y),c.x, c.y);
    }
	return true;
}

//bool World::initializeLife(int number, typename typeL) {
//	for (int i = 0; i < number; i++) {
//		Coordinate c = getRandomFreePosition();
//		// no more empty cells
//		if (!c) { return false; }
//		mp->insertMonster(new typeL(c.x, c.y), c.x, c.y);
//	}
//	return true;
//}



Coordinate World::getRandomFreePosition(){

	Coordinate c;											// cell to set the living (init value is (-1,-1)
	
	int free_cells = mp->getAmountFreePosition();			// only free_cells are empty
	if (free_cells == 0) {
		return c;											// return false if no free cell left
	}
	
	int indexFree = 1 + (modulo(rand(), (free_cells)));		// find the indexFree free cell

    // counter
    int AmountOfPassedFreePos = 0;							// free cells passed

	// find the indexFree empty cell
	for (c.x = 0; c.x < wwidth; c.x++) {
		for (c.y = 0; c.y < wwidth; c.y++) {
			if (cell_is_empty(c)) {
				AmountOfPassedFreePos++;
				if (AmountOfPassedFreePos == indexFree) { 	// is this the indexFree position?
					return c;
				}
			}
		}
		// we reached the last column and did not find indexFree empty cells
		// this should never happen
		exit_error(1);

		if (c.x == mp->getWidth() - 1) {
			// did we find some empty cells
			if (AmountOfPassedFreePos > 0) {
				// yes => restart search at column 0
				c.x = 0;
				// and new indexFree = old_indexFree mod NumFree
				indexFree = modulo(indexFree, AmountOfPassedFreePos);
				AmountOfPassedFreePos = 0;
			}
		}
    }
#ifdef DEBUG
	perror ("everything is full");
//	wait_for_keypressed();
#endif
	// return false
    c.x = -1;
    c.y = -1;
    return c;
}



/**
 * start the simulation 
 */
void World::run() {

    // inside this loop each step is gone
    for (step = 0; step < maxsteps; step++) {


        performOneStep();

        //every X rounds a new plant grows in a random place 
        if (step % 1 == 0) {

			//if the map is empty, a new plant is able to grow
            //at the generated position
			Coordinate c = getRandomFreePosition();
            if (c && !cell_is_empty(c)) {
                mp->insertMonster(new Vegetal(c.x, c.y), c.x ,c.y);
            }
        }
    }
}


void World::performOneStep() {

    //kgv berechenen, aktuelles level modulo kgv rechnen		
    int kgv = 2;
    for (int noch = 0; noch < kgv; noch++) {

#ifdef DEBUG
        std::cout << "step" << step << "." << noch % 2 << "\n";
#endif
        //set everything walkable true to ensure that every monster can walk.

        //set walkable false is used later inside the for loops for avoiding
        //that a monster can move twice.
		Coordinate c;
        for (c.x = 0; c.x < mp->getWidth(); c.x++) {
            for (c.y = 0; c.y < mp->getHeight(); c.y++) {
                if (!cell_is_empty(c)) {
                    if (mp->getMapItem(c)->monster->getCellChar() == 'c' ||
                    	mp->getMapItem(c)->monster->getCellChar() == 'C') {
                    	mp->getMapItem(c)->monster->setWalkable(true);
                    }
                }
            }
        }


        //go through the map and perform an action if the field is occupied by a
        //Creature.
        for (c.x = 0; c.x < mp->getWidth(); c.x++) {
            for (c.y = 0; c.y < mp->getHeight(); c.y++) {

            	//TODO: aendern damit hier auch der vom user definierte speed drin vorkommt
                if (
                		(isAConsumerI(c) || (isAConsumerII(c) && noch % 2 == 0))
                        && (mp->getMapItem(c)->monster->isWalkable())) {

                    //save current Life as Creature and remove monster from old position.
                    Creature* currentCreature = (Creature*) (mp->getMapItem(c)->monster);
                	mp->removeMonster(c.x,c.y);

                	//compute new position and delta values.
                    Coordinate newPosition;
					newPosition = c;
                    
					int plusX = c.x, plusY = c.y;

                    // if Creature smells another creature (returns, 0,1,-1 for plusX,plusY)
                    if (smell(currentCreature, &plusX, &plusY)) {
                    	//fetch the movement out of plusX
                    } else {
                    	//randomly generate movement
                        plusX = -1 + (modulo(rand(), 3));
                        plusY = -1 + (modulo(rand(), 3));
                    }

                    //calculate the new position modulo map size because creatures can pass the edge.
                    newPosition.x = modulo(c.x + plusX, mp->getWidth());
                    newPosition.y = modulo(c.y + plusY, mp->getHeight());

                    int index = -2;

                    //not moving
                    if (plusX == plusY && plusY == 0) {

                    	mp->insertMonster(currentCreature, newPosition.x, newPosition.y);
                    } else {

                        //index of method interact in Creature. Tells how to
                        //interact with the new coordinate
                        index = currentCreature->interact(currentCreature,
                        		mp->getMapItem(newPosition)->monster);

                    }


                    //if index is equal to 1 there is nothing to interact and the creature
                    //just changes its position
                    if (index == -1) {

                    	//update position INSIDE the creature
                    	mp->insertMonster(currentCreature, newPosition.x, newPosition.y);

                    }
                    //eat something
                    else if (index == 1) {

                    	//delete the meal.
                    	mp->deleteMonster(newPosition.x, newPosition.y);

                    	//go to the new position.
                    	mp->insertMonster(currentCreature, newPosition.x, newPosition.y);
                    }
                    //reproduce
                    else if (index == 0) {

                        Creature a = *((Creature*) (mp->getMapItem(newPosition)));
                        Creature b = *currentCreature;

#ifdef DEBUG
                        std::cout << "zeit1" << a.getPregnantTime() << "\n";
#endif
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
                    }

                	//set walkable false because this creature should be unable to move once again
                	//in this step.
                    currentCreature->setWalkable(false);

                	//TODO: nicht mehr hardcoden, ggt etc.
                    if (noch % 2 == 0) {
                        timePassed(currentCreature, c.x, c.y);
                    }
                } else {

                }
            }
        }
        mp->print(false);
    }
}


/**
 *
 * @param smellingCreature the creature which smells somenthing
 * @param plusX plusY the coordinate of the smellingCreature which is also se
 * @return whether the smellingCreature smells something.
 */
bool World::smell(Creature* smellingCreature, int* plusX, int* plusY) {

	//the range of smell detection of the current creature
    int range = smellingCreature->getRangeOfSmellDetection();

    Coordinate bestDestination;
    int bestScore = INT_MIN;

    //the values for the computation of the index which are independent from the
    //special fields.
    int TWF = (*smellingCreature).getTimeWithoutFood();
    int MTWF = (*smellingCreature).getMaxTimeWithoutFood();

    Coordinate oldCoordinate;
    oldCoordinate.x = *plusX;
    oldCoordinate.y = *plusY;


    //go through all field that the current creature is able to detect.
    for(int x = oldCoordinate.x - range; x <= oldCoordinate.x + range; x ++){
        for(int y = oldCoordinate.y - range; y <= oldCoordinate.y + range; y ++){

        	Coordinate coord;
        	coord.x = modulo(x, mp->getWidth());
        	coord.y = modulo(y, mp->getHeight());

        	int FE, PE, STE;

        	//compute Food, predator, same type emission depending on type of
        	//smellingCreature.
        	if(isAConsumerI(smellingCreature)){
        		FE = mp->getMapItem(coord)->vEmission;
        		PE = mp->getMapItem(coord)->c2Emission;
        		STE = mp->getMapItem(coord)->c1Emission;
        	} else {

        		FE = mp->getMapItem(coord)->c1Emission;
        		PE = 0;
        		STE = mp->getMapItem(coord)->c2Emission;
        	}

        	//compute score
            int score = FE * (TWF / MTWF) + (STE - PE) * ((MTWF - TWF) / MTWF);

            //if the current score is better than all scores before
            if(score > bestScore){
            	bestScore = score;
            	bestDestination.x = x;
            	bestDestination.y = y;
            }
        }
    }

    //calculate destination and write it into the values posX and posY
    *plusX = (oldCoordinate.x - bestDestination.x) % 2;
    *plusY = (oldCoordinate.y - bestDestination.y) % 2;

    //return whether a best destination has been found.
    return (!(bestDestination.x == INT_MIN && bestDestination.y == INT_MIN));
}

void World::timePassed(Creature* d, int i, int j) {

    //increase values 
    (*d).setTimeWithoutFood((*d).getTimeWithoutFood() + 1);
    (*d).setLifeTime((*d).getLifeTime() + 1);
    //birth
    if ((*d).increasePregnantTime()) {

        for (int x = -1; x <= 1; x++) {
            for (int y = -1; y <= 1; y++) {

                //TODO: getX und getY refreshen und so.
            	int wid = mp->getWidth();
            	int hei = mp->getHeight();
                int xPos = modulo((*d).getX() + x, wid);
                int yPos = modulo((*d).getY() + y, hei);


                Coordinate c;
                c.x = xPos;
                c.y = yPos;
                if (cell_is_empty(c)) {
                    if (isAConsumerI(c)) {
                    	mp->insertMonster(new ConsumerI(xPos, yPos), xPos, yPos);
                    } else if (isAConsumerII(c)) {
                    	mp->insertMonster(new ConsumerII(xPos, yPos), xPos, yPos);
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


    if ((*d).getTimeWithoutFood() >= (*d).getMaxTimeWithoutFood()
            || (*d).getLifeTime() >= (*d).getMaxLifeTime()) {

#ifdef DEBUG
        std::cout << "I died!\n";
        std::cout << "current time without food: " << (*d).getTimeWithoutFood() << "\n" << "current life time: " << (*d).getLifeTime() << "\n";
#endif

        mp->deleteMonster(i, j);
    }
}





int main(int _anzParam, char** strings) {
	int height;
	int width;
	int maxNumberOfSteps;
	int numberConsumer1;
	int numberConsumer2;
	// to do
	int numberVegetal = 5;
	exit_error(1);
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
            (std::string)"Recall World with 8 parameters like \n" +
            (std::string)"World [int] [int] [int] [int] [int] [char*] [char*] [char*]" +
            (std::string) "\n\n1st Param	[height]\n2nd param	[width]\n" +
            (std::string) "3rd param	[maxNumberOfStepsInSimulation]\n4th param	" +
            (std::string) "[NumberOfC1AtTheBeginning]\n5th param	" +
            (std::string) "[NumberOfC2AtTheBeginning]<<\n6th param	[pathToVegetal.txt]" +
            (std::string) "\n7th param	[pathToConsumerI]\n8th param	[consumer2]\n";


    //if the amount of parameters is not equal to 8 + 1.
    if (_anzParam != 9) {
        //print error message
        std::cout << "Missing arguments.\n" << errorMessage;
		goto exit_out;
    }

    //save integer values
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
		goto exit_out;
	}

    if (!is_file(strings[6]) || !is_file(strings[8]) || !is_file(strings[7])) {
        std::cout << "file does not exist or is a directory" << strings[6];
		goto exit_out;
    }

    // * test
	clear_screen();
	new World(width, height, numberConsumer1, numberConsumer2, maxNumberOfSteps, numberVegetal);

exit_out:
	clear_screen();
	new World(width, height, numberConsumer1, numberConsumer2, maxNumberOfSteps, numberVegetal);

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

