
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


/*
 * Constructor
 */


World::World(int _width, int _height, int nC1, int nC2, int mstep, int nV) {
	
	// set world height and width
	wwidth  = _width;
	wheight = _height;

	//tell random to generate random numbers
	srand((unsigned)time(NULL));


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

}


World::~World() {
	mp->~Map();
	delete (mp);
	Values::getInstance()->~Values();
	delete (Values::getInstance());
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
		if (!createNewConsumerI(c,0)) {
			exit_error(3);
		}
	}

    //create ConsumerII:
    for (int i = 0; i < nC2; i++) {
    	c = getRandomFreePosition();
		if (!createNewConsumerII(c,0)) {
			exit_error(4);
		}
    }
	return true;
}

#ifdef TESTFREE
	// debug routine to test if the values are correct
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
			exit_error(1);
		}
	return testam;
	}
#endif


Coordinate World::getRandomFreePosition(){

	Coordinate c;											// cell to set the living (init value is (-1,-1)

#ifdef TESTFREE
	testfree();
#endif

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

		
#ifdef TESTFREE
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
// and set Time without Food
// return true on success
bool World::createNewConsumerI(Coordinate _c, int TWF) {
	if (_c && cell_is_empty(_c)) {
		ConsumerI* c2 = new ConsumerI(_c);
		c2->setTimeWithoutFood(TWF);
		mp->insertMonster(c2, _c);
		return true;
	}
	return false;
}


// create a new ConsumerII at the position _c
// and set Time without Food
// return true on success
bool World::createNewConsumerII(Coordinate _c, int TWF) {
	if (_c && cell_is_empty(_c)) {
		ConsumerII* c2 = new ConsumerII(_c);
		c2->setTimeWithoutFood(TWF);
		mp->insertMonster(c2, _c);
		return true;
	}
	return false;
}


// reset consumers to "walkable true" to ensure it can walk/interact.
void World::setAllConsumersWalkableAndInteractable() {
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


// converts a Coordinate to a valid Coordinate inside
// the world
Coordinate World::normCoordinateToWorld(Coordinate c) {
	Coordinate normPosition;
	normPosition.x = modulo(c.x, wwidth);
	normPosition.y = modulo(c.y, wheight);
	return normPosition;
}




void World::performOneStep() {
	
	Coordinate c, newPosition, deltaPos;


#ifdef DEBUG2
        std::cout << "Step " << step << "\n";
#endif

        // reset consumers to "walkable true" to ensure it can walk.
        // set walkable false is used later inside the loops to avoid that
        // a monster can move twice.
		setAllConsumersWalkableAndInteractable();


        // go through the map and perform an action if a cell is occupied by a
        // Creature.
        for (c.x = 0; c.x < wwidth; c.x++) {
            for (c.y = 0; c.y < wheight; c.y++) {

				
            	//TODO: aendern damit hier auch der vom user definierte speed drin vorkommt
                if ((isACreature(c)) &&
                    (mp->getMapItem(c)->monster->isWalkable())) {

                    //save current Life as Creature and remove monster from old position.
                    Creature* currentCreature = (Creature*) (mp->getMapItem(c)->monster);

					// to ensure all emisions are form other livings, the current consumer
					// has to be temorary removed from the map
					mp->removeMonster(c);

					//compute new position and delta values.
					// calculate the best movement/direction (returns plusX,plusY = 0,1,-1)
					bool creatureSmellsSomthing = smellAndGetBestDestination(currentCreature, &deltaPos);

					//calculate the new position modulo map size because creatures can pass the edge.
					newPosition = addCoordinates(c, deltaPos);
					newPosition = normCoordinateToWorld(newPosition);
					

					int index = -2;
					if (creatureSmellsSomthing) {
						// smell says do not move 
						// the only thing the creature can do is get Pregnant
						// if there is a creature of the same kind nearby
						if ((deltaPos.x == 0) && (deltaPos.y == 0)) {
							if (currentCreature->isReadyForPregnant()) {
								// find a creature of the same kind nearby
								if (findPregnantReadyCreatureNearby(currentCreature, &newPosition)){
									index = 0;
								} else {
									index = -2;
								}
							} else {
								index = -2;
							}
						} else {
							// index of method "interact" tells how to
							// interact with the new coordinate 
							index = interact(currentCreature, newPosition);
						}
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
						// back on the map
						mp->insertMonster(currentCreature, c);
						// set currentCreatue Pregnant if possible
						if (!(currentCreature->isPregnant())) {
							Creature* partner = (Creature*)(mp->getMapItem(newPosition)->monster);
							impregnate(currentCreature, partner);
						}
						break;
					} // end switch
					

					// set walkable false because this creature should be unable to move/interact once again
					// in this step.
					currentCreature->setWalkable(false);

					// check die/etc.
					timePassed(currentCreature);
					
#ifdef DEBUG1
					mp->print(false); 
#endif
				}
				else {
					if (isAVegetal(c)) {
							Vegetal* currentVegetal = (Vegetal*)(mp->getMapItem(c)->monster);
							timePassed(currentVegetal);
					}
				}
			} // height
		} // width
}


bool World::findPregnantReadyCreatureNearby(Creature* _c, Coordinate* _newpos) {
	Coordinate c,tmpPos,myPos;
	char myChar;
	

	myChar = _c->getCellChar();
	myPos = _c->getPos();
	
	// scan my neighbors;
	for (c.x = -1; c.x <= 1; c.x++) {
		for (c.y = -1; c.y <= 1; c.y++) {
			// avoid (0,0) pos
			if ((c.x == 0) && (c.y == 0)) c.y++;
			// norm position
			tmpPos = addCoordinates(myPos, c);
			tmpPos = normCoordinateToWorld(tmpPos);
			// only scan creatures
			if (((myChar == 'c') && (isAConsumerI(tmpPos))) ||
				((myChar == 'C') && (isAConsumerII(tmpPos)))) {
				Creature* otherCreature;
				otherCreature = (Creature*)mp->getMapItem(tmpPos)->monster;
				// only take ready for pregnant creatures
				if (otherCreature->isReadyForPregnant()) {
					*_newpos = tmpPos;
					return true;
				}
			}
		}
	}
	return false;
}



// returns 0 = reproduce
// returns 1 = i can eat that
// return -1 = i can walk
// return -2 = nothing to do 
int World::interact(Creature* _a, Coordinate testpos){
	
	char char_a = _a->getCellChar();
	char char_b;
	Coordinate mypos = _a->getPos();
	
	// i can not interact with myself
	if ((testpos.x == mypos.x) && (testpos.y == mypos.y)){
		exit_error(10);
	}

	if (cell_is_empty(testpos)) {
		char_b = ' ';
	} else {
		char_b = mp->getMapItem(testpos)->monster->getCellChar();
	}

	switch (char_a) {
	case 'c':
		if (char_b == 'c') return 0;		// i can reproduce
		if (char_b == 'v') return 1;		// i can eat that
		if (char_b == 'C') return -2;		// i can not do anything
		return -1;							// i can walk, cell is empty
	case 'C':
		if (char_b == 'C') return 0;		// i can reproduce
		if (char_b == 'c') return 1;		// i can eat that
		if (char_b == 'v') return -2;		// i can not do anything
		return -1;							// i can walk, cell is empty
	default:
		// this should never happen 
		exit_error(5);
		return -3;
		break;
	}
}



// impregnate if both creatues are ready
// if c1 get pregnant c2 is also set intaktiv for the step.

void World::impregnate(Creature* _c1, Creature* _c2) {

#ifdef DEBUG
	std::cout << "zeit1: " << _c1->getMaxPregnantTime() << "\n";
#endif

	// test if creature1/2 are ready for pregnant
	// both creatues must be older then 1/4 of it's maximum lifetime
	//          and  both must not be pregnat
			  
	if ((_c1->isReadyForPregnant()) && (_c2->isReadyForPregnant())) {
		_c1->setPregnant(true);
		
		// Creature 2 is now inactive for this step
		_c2->setWalkable(false);
#ifdef DEBUG
		std::cout << "zeit2: " << _c1->getMaxPregnantTime() << "\n";
#endif
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
bool World::smellAndGetBestDestination(Creature* smellingCreature, Coordinate* plusXY) {

	Coordinate bestDeltaDestination;
	Coordinate bestDestination;
	Coordinate oldCoordinate = smellingCreature->getPos();
	Coordinate c;
	int speed = smellingCreature->getSpeed();
	int FE=0, PE=0, STE=0;
	int score;
	
	
	int bestScore = INT_MIN;
	bool smellSomeThing = false;

	//the range of smell detection of the current creature
    int range = smellingCreature->getRangeOfSmellDetection();


    //the values for the computation of the index which are independent from the
    //special fields.
    int TWF  = (*smellingCreature).getTimeWithoutFood();		
    int MTWF = (*smellingCreature).getMaxTimeWithoutFood();


    //go through all field that the current creature is able to detect.
    for(c.x = oldCoordinate.x - range; c.x <= oldCoordinate.x + range; c.x ++){
        for(c.y = oldCoordinate.y - range; c.y <= oldCoordinate.y + range; c.y ++){

        	Coordinate coord = normCoordinateToWorld(c);

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
            score = FE * (TWF / MTWF) + (STE - PE) * ((MTWF - TWF) / MTWF);

			// if one of the emmisions is <>0 for only one cell 
			// the creatue smells something
			if ( (FE != 0) || (STE != 0) || (PE != 0) ) {
				smellSomeThing = true;
			}
			
            // if the current score is better than all scores before
            if(score >= bestScore){
            	bestScore = score;
				bestDestination.x = c.x;
				bestDestination.y = c.y;
			}
        }
    }
	// DeltaDestination must be in the range [-speed,speed]
	// oldCoordinate +- Speed 
	// deltal = getRandomNumber(-Speed,Speed)
	// creatue smells nothing => take a random value
	if (!smellSomeThing) {
		bestDeltaDestination.x = getRandomNumber(-speed, speed);
		bestDeltaDestination.y = getRandomNumber(-speed, speed);
		*plusXY = bestDeltaDestination;
		return (false);
	} 
	
    // calculate delta to bestdestination
	bestDeltaDestination = subCoordinates(bestDestination, oldCoordinate);
	// max allowed range = +-speed
	bestDeltaDestination.x = sign(bestDeltaDestination.x) * MIN(abs(bestDeltaDestination.x), speed);
	bestDeltaDestination.y = sign(bestDeltaDestination.y) * MIN(abs(bestDeltaDestination.y), speed);

	// bestDeltaDestination.x = sign((bestDestination.x - oldCoordinate.x));
	// bestDeltaDestination.y = sign((bestDestination.y - oldCoordinate.y));
	
	*plusXY = bestDeltaDestination;
    
	return (smellSomeThing);
}


/**
	time depending vegetal (max Liefetime)
*/
void World::timePassed(Vegetal* d) {

	// increment values
	(*d).incrementLifeTime();

	// do not live too long
	if ((*d).getCurrentLifeTime() > (*d).getMaxLifeTime()) {
		mp->deleteMonster((*d).getPos());
	}
}


/**
	time depending events (Hungry, pregnant, birth)
*/
void World::timePassed(Creature* d) {
	
	Coordinate childPos;

    // increment values

    (*d).incrementTimeWithoutFood();
    (*d).incrementLifeTime();

    // it's time for birth?
	if ((*d).incrementPregnantTime()) {
		giveBirthToABaby(d);
	}

	// do not live too long
	if (creaturMustDie(d)) {
		mp->deleteMonster((*d).getPos());
	}
}



// give birth to a baby

void World::giveBirthToABaby(Creature* d) {
	Coordinate myPos, childPos;
	myPos = (*d).getPos();
	int TWF = (*d).getTimeWithoutFood();

	// find a place for the baby
	childPos = getAFreePositionAroundme(myPos);
	if (childPos) {								// place found
		if (isAConsumerI(myPos)) {
			// child get the same time without food -5 than the mother
			createNewConsumerI(childPos, MAX(TWF-5,0));
		}
		// child get the same time without food +5 than the mother
		else if (isAConsumerII(myPos)) {
			createNewConsumerII(childPos, MAX(TWF-5,0));
		}
	}
	else {										// no place found
		// the child can not be born=dies and 
		// the creature is not pragnant any more.
#ifdef DEBUG
		std::cout << "baby dies";
#endif
	}
}


/**
 *	tests if a creatue reaches it's maximum LifeTime
 *	or starve due to lack of food
 */
bool World::creaturMustDie(Creature* d) {
	bool idie = false;
	if ((*d).getTimeWithoutFood() >= (*d).getMaxTimeWithoutFood()) {
		idie = true;
	}
	if ((*d).getCurrentLifeTime() >= (*d).getMaxLifeTime()) {
		idie = true;
	}
#ifdef DEBUG
	if (idie) {
		std::cout << "I died!\n";
		std::cout << "current time without food: " << (*d).getTimeWithoutFood() << "\n" << "current life time: " << (*d).getCurrentLifeTime() << "\n";
	}
#endif
	return idie;
}




// seaches all cells around _myPos and 
// returns true and a freePosition
// returns false
Coordinate World::getAFreePositionAroundme(Coordinate _myPos) {
	Coordinate freePos, c;

	for (c.x = -1; c.x <= 1; c.x++) {
		for (c.y = -1; c.y <= 1; c.y++) {
			// avoid (0,0) = mypos
			if ((c.x == 0) && (c.y == 0)) c.y++;
			freePos = addCoordinates(_myPos, c);
			freePos = normCoordinateToWorld(freePos);
			if (cell_is_empty(freePos)) {
				return freePos;
			}
		}
	}
	return Coordinate(-1,-1); // false equivalent of Coordiante
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



int main(int _anzParam, char *strings[]) {

	int height;
	int width;
	int maxNumberOfSteps;
	int numberConsumer1;
	int numberConsumer2;
	// TODO
	int numberVegetal;


	//if the amount of parameters is not equal to 8 + 1.
	if (_anzParam != 9) {
		exit_error(7);
	}

	// read command line values
	height			 = atoi(strings[1]);
	width			 = atoi(strings[2]);
	maxNumberOfSteps = atoi(strings[3]);
	numberConsumer1  = atoi(strings[4]);
	numberConsumer2  = atoi(strings[5]);
	numberVegetal	 = numberConsumer1*2/3;				// something to eat for consumer1

	//check whether integer values are correct (greater than 0)
	if (maxNumberOfSteps <= 0 || height <= 0 || width <= 0 ||
		numberConsumer1 < 0 || numberConsumer2 < 0) {
		exit_error(8);
	}


	std::string errorMessage;
	if (!is_file(strings[6]) || !is_file(strings[8]) || !is_file(strings[7])) {
		exit_error(9);
	}
	
	//Set sources in lifeforms
	//ConsumerI::setSource((char*)strings[7]);

	// allways clear the screen at the beginning
	clear_screen();

	World* w = new World(width, height, numberConsumer1, numberConsumer2, maxNumberOfSteps, numberVegetal);
	w->~World();

	wait_for_keypressed();
	return 0;
}

