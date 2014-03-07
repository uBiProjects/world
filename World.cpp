/*
 * World Class.
 */
#include <iostream>
#include <stdlib.h>
#include <string>
#include <float.h>	//eg. the bounds of integer
#include <time.h>
#include <cstddef>
#include <fstream>      //for checking whether file does not exist (in method main).

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
    wwidth = _width;
    wheight = _height;

    //tell random to generate random numbers
#ifndef TESTSCORE
    srand((unsigned) time(NULL));
#endif

    //save maximal amount of steps
    maxsteps = mstep;

    // initialize Map
    mp = new Map(_width, _height);

    // initialize life forms
    initializeCreature(nC1, nC2, nV);

    // print fist screen
    mp->print(false);

    // start life of creatures.
    run(nV);

}

// Destructor:
World::~World() {
	delete (mp);
	delete (Values::getInstance());
}

/**
 * Initialize the creatures.
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

    // create ConsumerI
    for (int i = 0; i < nC1; i++) {
        c = getRandomFreePosition();
        if (!createNewConsumerI(c, i)) {
            exit_error(3);
        }
    }

    //create ConsumerII:
    for (int i = 0; i < nC2; i++) {
        c = getRandomFreePosition();
        if (!createNewConsumerII(c, i)) {
            exit_error(4);
        }
    }
    return true;
}

#ifdef TESTFREE
	// debug routine to test if the values are correct
	int World::testfree() {
		Coordinate d;       // cell to set the living (init value is (-1,-1)
		int testam = 0;
		for (d.x = 0; d.x < wwidth; d.x++) {
			for (d.y = 0; d.y < wwidth; d.y++) {
				if (cell_is_empty(d)) {
					testam++;
				}
			}
		}
		int free_cells = mp->getAmountFreePosition();	// only free_cells are empty
		if (free_cells != testam) {
			exit_error(1);
		}
	return testam;
	}
#endif

// Returns the coordinates of a random, free position.

Coordinate World::getRandomFreePosition() {
    // cell to set the living (init value is (-1,-1)
    Coordinate c;

#ifdef TESTFREE
    testfree();
#endif
    // only free_cells are empty
    int free_cells = mp->getAmountFreePosition();
    if (free_cells == 0) { // return false if no free cells left 
        return c;
    }

    int indexFree = getRandomNumber(1, free_cells); // find the indexFree free cell

    int AmountOfPassedFreePos = 0; // free cells passed

    // find the indexFree empty cell
    for (c.x = 0; c.x < wwidth; c.x++) {
        for (c.y = 0; c.y < wheight; c.y++) {
            if (cell_is_empty(c)) {
                if (++AmountOfPassedFreePos == indexFree) { // is this the indexFree position?
                    return c;
                }
            }
        }
    }

    // we reached the end of the world did not find indexFree empty cells
    // this should never happen
    exit_error(1);
    // not needed just to disable compiler warning message
    return c;
}


/**
 * Start the simulation.
 */
void World::run(int fixedNumberOfVegetal) {
    Coordinate c;

    for (int step = 0; step < maxsteps || maxsteps == -1; step++) {
        
        performOneStep(step);

#ifdef TESTFREE
        testfree();
#endif
      


        // amount of Vegetal is fixed
        int acutalVegetal = mp->getnumberOfVegetal();
        int missingVegetal = fixedNumberOfVegetal - acutalVegetal;
        if (missingVegetal > 0) {
            for (int i = 0; i < missingVegetal; i++) {
                if (mp->getAmountFreePosition() > 0) {
                    c = getRandomFreePosition();
                    createNewVegetal(c);
                }
            }
        }
		// update the map and number of Vegetal
		mp->print(false);

		

		// simulation ends if # of creatures =0
		if (mp->getnumberOfCI() == 0 || mp->getnumberOfCII() == 0) {
			return;
		}
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


// Create a new ConsumerI at the position _c
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


// Create a new ConsumerII at the position _c
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

// Reset consumers to "walkable true" to ensure it can walk/interact.
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



// Performs one action like walking, eating, mating
void World::performOneStep(int step) {

    Coordinate c, newPosition;

    // reset consumers to "walkable true" to ensure it can walk.
    // set walkable false is used later inside the loops to avoid that
    // a monster can move twice.
    setAllConsumersWalkableAndInteractable();

       
    // go through the map and perform an action if a cell is occupied by a
    // Creature.
    for (c.x = 0; c.x < wwidth; c.x++) {
        for (c.y = 0; c.y < wheight; c.y++) {

            if ((isACreature(c)) &&
                    (mp->getMapItem(c)->monster->isWalkable())) {

                //save current Life as Creature and remove monster 
                // from old position.
                Creature* currentCreature =
                        (Creature*) (mp->getMapItem(c)->monster);
#ifdef DEBUG2
                if (currentCreature->getMaxTimeWithoutFood() - currentCreature->getTimeWithoutFood() < 2) {
                    printf("compute x = %i y=%i\n", c.x, c.y);
                    mp->print(false);
                }
#endif
                // to ensure all emissions are from life-forms other than the current consumer,
                // it has to be temporarily removed from the map
                mp->removeMonster(c);

                // compute new position and delta values.
                // calculate the best new position;
				
				smellAndGetBestDestination(currentCreature, &newPosition);

				// can the creature interact with the new position?
				// return 2 = i can walk and eat
				// return 1 = i can walk
				// return 0 = stay
				int index = interact(currentCreature, newPosition);


				// search nearby for eating or reproduce
				if (index != 2) {
					if (currentCreature->isHungry()) {							// hungry => find food
						if (findFood(currentCreature, &newPosition)) {
							index = 2;
						}
					} else {													// not hungry => try pregn
						if (findMatingPartner(currentCreature, &newPosition)){
							index = 3;
						}
					}
				}


                switch (index) {
                    case 0: // do not move and do not interact
                        mp->insertMonster(currentCreature, c);
                        break;
                    case 1: // walk: move creature to new position
                        mp->insertMonster(currentCreature, newPosition);
                        break;
                    case 2: // eat something and walk
                        // eat the meal.
                        mp->deleteMonster(newPosition);
                        // go to new position.
                        mp->insertMonster(currentCreature, newPosition);
                        // reset time without food
                        currentCreature->setTimeWithoutFood(0);
                        break;

                    case 3: // (try) to reproduce. Don't walk.
                        // Insert monster back onto the map
                        mp->insertMonster(currentCreature, c);
                        // set currentCreature Pregnant if possible
                        if (!(currentCreature->isPregnant())) {
                            Creature* partner =
                                    (Creature*) (mp->getMapItem(newPosition)->monster);
                            impregnate(currentCreature, partner);
                        }
                        break;
                } // end switch


                // set walkable false because this creature should be unable 
                // to move/interact once again in this step.
                currentCreature->setWalkable(false);

                // Check status of monster
                timePassed(currentCreature);
#ifdef DEBUG1
                mp->print(true);
                std::cout << "Step " << step + 1 << "\n";
#endif
            } else if (isAVegetal(c)) {
                Vegetal* currentVegetal =
                        (Vegetal*) (mp->getMapItem(c)->monster);
                timePassed(currentVegetal);
            }
        } // height
    } // width
	std::cout << "Step " << step + 1 << "\n";
}


// Find food in a neighboring cell.
bool World::findFood(Creature* _c, Coordinate* _newpos) {
	Coordinate c, tmpPos, myPos;

	myPos = _c->getPos();

	// scan my neighbors;
	for (c.x = -1; c.x <= 1; c.x++) {
		for (c.y = -1; c.y <= 1; c.y++) {
			// avoid (0,0) position
			if ((c.x == 0) && (c.y == 0)) c.y++;
			// norm position
			tmpPos = addCoordinates(myPos, c);
			tmpPos = normCoordinateToWorld(tmpPos);
			// only scan creatures
			if (cellIsFood(_c, tmpPos)) {
					*_newpos = tmpPos;
					return true;
			}
		}
	}
	return false;
}


// test if the cell contains food for me
bool World::cellIsFood(Creature* _c, Coordinate _newPos) {
	char myChar = _c->getCellChar();
	switch (myChar) {
		case 'c': return (isAVegetal(_newPos));
		case 'X': return (isAConsumerI(_newPos));
	}
	return false;
}


// Find a partner in a neighboring cell that you can mate with.
bool World::findMatingPartner(Creature* _c, Coordinate* _newpos) {
    Coordinate c, tmpPos, myPos;
    char myChar;

    myChar = _c->getCellChar();
    myPos = _c->getPos();

    // scan my neighbors;
    for (c.x = -1; c.x <= 1; c.x++) {
        for (c.y = -1; c.y <= 1; c.y++) {
            // avoid (0,0) position
            if ((c.x == 0) && (c.y == 0)) c.y++;
            // norm position
            tmpPos = addCoordinates(myPos, c);
            tmpPos = normCoordinateToWorld(tmpPos);
            // only scan creatures
            if (((myChar == 'c') && (isAConsumerI(tmpPos))) ||
                ((myChar == 'X') && (isAConsumerII(tmpPos)))) {
                Creature* otherCreature;
                otherCreature = (Creature*) mp->getMapItem(tmpPos)->monster;
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



// return 2 = i can walk and eat
// return 1 = i can walk
// return 0 = stay
int World::interact(Creature* _c, Coordinate _newpos) {


	// i can not interact with myself
	if (isEqualCoordinates(_newpos, _c->getPos())) {
		return 0;
	}

	// if is empty  =>  jump 
	// i can walk there
	if (cell_is_empty(_newpos)) {
		return 1;
	}

	// cell not empty => if food jump
	if (cellIsFood(_c,_newpos)) {
		return 2;
	}
	// cell not empty and i can not eat that
	// stay where you are
	// TODO
	// better would be => find the best place new this position (A*)
	return 0;
    
}



// Impregnate if both creatures are ready
// If c1 gets pregnant c2 is also set inactive for the step.
void World::impregnate(Creature* _c1, Creature* _c2) {

#ifdef DEBUG
    std::cout << "time1: " << _c1->getMaxPregnantTime() << "\n";
#endif

    // Test if creatures 1 and 2 are ready to mate
    // both creatures must be older then 1/4 of their maximum lifetime
    // and  both must not be pregnant
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
 * @param smellingCreature the creature which smells something
 * @param newpos Coordinate
 * @return true if the smellingCreature smells something.
 *         new position in _newPos
 */
bool World::smellAndGetBestDestination(
            Creature* smellingCreature, Coordinate* _newPos) {

	Coordinate bestDeltaDestination;
	Coordinate bestDestination;
	Coordinate oldCoordinate = smellingCreature->getPos();
	Coordinate c;
	bool cellempty;
	bool cellContainsFood;

	int speed = smellingCreature->getSpeed();
	int FE=0, PE=0, STE=0;
	double score;
	
	double bestScore = -DBL_MAX;
	bool smellSomeThing = false;


    // the range of smell detection of the current creature
    int range = smellingCreature->getRangeOfSmellDetection();

    // the values for the computation of the index 
    // which are independent from curtain fields.
    int TWF = (*smellingCreature).getTimeWithoutFood();
    int MTWF = (*smellingCreature).getMaxTimeWithoutFood();


    // Go through all fields that the current creature is able to detect.
    for (c.x = oldCoordinate.x - range; c.x <= oldCoordinate.x + range; c.x++) {
        for (c.y = oldCoordinate.y - range; c.y <= oldCoordinate.y + range; c.y++) {

            Coordinate coord = normCoordinateToWorld(c);

			// Compute food, predator, same type emission depending on type of
			// smellingCreature.
			if (isAConsumerI(smellingCreature)){
        		FE  = mp->getMapItem(coord)->vEmission;		// food emission
        		PE  = mp->getMapItem(coord)->c2Emission;	// predator emission
        		STE = mp->getMapItem(coord)->c1Emission;	// same type emission
        	} else {
				FE = mp->getMapItem(coord)->c1Emission;		// food emission
        		PE  = 0;									// predator emission
        		STE = mp->getMapItem(coord)->c2Emission;	// same type emission
        	}
			cellContainsFood = cellIsFood(smellingCreature,coord);
			cellempty = cell_is_empty(coord);
			// bool isPregnant = smellingCreature->isPregnant();

            // compute score
            // score = FE * (TWF / MTWF) + (STE - PE) * ((MTWF - TWF) / MTWF);

			score = computeScore(FE, TWF, MTWF, STE, PE, cellempty, cellContainsFood);

            // if one of the emissions is <>0 for only one cell 
            // the creature smells something
            if ((FE != 0) || (STE != 0) || (PE != 0)) {
                smellSomeThing = true;
            }

            // if the current score is better than all scores before
            if (score >= bestScore) {
                bestScore = score;
                bestDestination.x = c.x;
                bestDestination.y = c.y;
            }
        }
    }


    // DeltaDestination must be in the range [-speed,speed]
    // oldCoordinate +- Speed 
    // delta  = getRandomNumber(-Speed,Speed)
    // creature smells nothing => take a random value
    if (!smellSomeThing) {
        bestDeltaDestination.x = getRandomNumber(-speed, speed);
        bestDeltaDestination.y = getRandomNumber(-speed, speed);
	}
	else {
		// calculate delta to best destination
		bestDeltaDestination = subCoordinates(bestDestination, oldCoordinate);
		// max allowed range = +-speed
		bestDeltaDestination.x =
			sign(bestDeltaDestination.x) * MIN(abs(bestDeltaDestination.x), speed);
		bestDeltaDestination.y =
			sign(bestDeltaDestination.y) * MIN(abs(bestDeltaDestination.y), speed);
	}
	*_newPos = addCoordinates(oldCoordinate, bestDeltaDestination);
	*_newPos = normCoordinateToWorld(*_newPos);
	
	return (smellSomeThing);
}




// Computes the score.
double World::computeScore(double FE, double TWF, double MTWF, double STE, double PE,
							bool _cellIsEmpty, bool _containsFood) {
	double score;
	double score_hungry;
	double score_walk;
	double hungry = (TWF / MTWF);

	// a creature can only go to a cell that is
	// ether empty or contains food
	// so all other cells should have a score of -DBL_MAX
	if (!_cellIsEmpty && !_containsFood) {
//		return (-DBL_MAX);
	}


	score_hungry = hungry * FE;
	score_walk = (1.0 - hungry) * (STE - PE*4.0);


	// if creature is very hungry => boost score_hungry
	// places with food are better than empty places
	if (hungry > 0.75) {
		if (_containsFood) score_hungry *= 2.0;
	}
	// not hungry at the moment 
	if (hungry < 0.25) {
		if (_cellIsEmpty) score_walk *= 2.0;
		score_hungry = 0;
	}

	score = score_hungry + score_walk;
	return score;
}

// TIME PASSED METHODS:

// For vegetal:
void World::timePassed(Vegetal* d) {

    // increment values
    (*d).incrementLifeTime();

    // do not live too long
    if ((*d).getCurrentLifeTime() > (*d).getMaxLifeTime()) {
        mp->deleteMonster((*d).getPos());
    }
}

// For creature:
void World::timePassed(Creature* d) {
    // increment values
    (*d).incrementTimeWithoutFood();
    (*d).incrementLifeTime();

    // it's time for birth?
    if ((*d).incrementPregnantTime()) {
        giveBirthToABaby(d);
    }

    // do not live too long
    if (creatureMustDie(d)) {
        mp->deleteMonster((*d).getPos());
    }
}

// give birth to a baby
void World::giveBirthToABaby(Creature* d) {

    Coordinate myPos, childPos;
    myPos = (*d).getPos();
    int TWF = (*d).getTimeWithoutFood();
    int MTWF = (*d).getMaxTimeWithoutFood();

    int childTWF = (MTWF + TWF) / 2;

    // find a place for the baby
    childPos = getAFreePositionAroundme(myPos);
    if (childPos) {
        //Takes half of the mother's food
        (*d).setTimeWithoutFood(MTWF + TWF - childTWF); // place found
        if (isAConsumerI(myPos)) {
            // child gets half of the mother's food
            createNewConsumerI(childPos, childTWF);
        } else if (isAConsumerII(myPos)) {
            // child gets half of the mother's food
            createNewConsumerII(childPos, childTWF);
        }
    } else { // no place found
        // the child can not be born=dies and 
        // the creature is not pregnant any more.
#ifdef DEBUG
        std::cout << "baby dies";
#endif
    }
}
/**
 * Tests if a creature reaches its maximum LifeTime
 * or starves due to lack of food.
 */
bool World::creatureMustDie(Creature* d) {
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

// searches all cells around _myPos and 
// returns true and a freePosition
// returns false
Coordinate World::getAFreePositionAroundme(Coordinate _myPos) {
	Coordinate freePos, c;

	for (c.x = -1; c.x <= 1; c.x++) {
		for (c.y = -1; c.y <= 1; c.y++) {
			// jump over my position  (0,0) 
			if ((c.x == 0) && (c.y == 0)) c.y++;
			freePos = addCoordinates(_myPos, c);
			freePos = normCoordinateToWorld(freePos);
			if (cell_is_empty(freePos)) {
				return freePos;
			}
		}
	}
	return Coordinate(-1,-1); // false equivalent of Coordinate
}


// check if a certain cell is empty
bool World::cell_is_empty(Coordinate c) {
	return (mp->getMapItem(c)->monster == NULL);
}

// Check if there is a creature on a certain coordinate.
bool World::isACreature(Coordinate _pos){
	if (cell_is_empty(_pos)) return false;
	return isAConsumerI(_pos) || isAConsumerII(_pos);
}

// Check if there is a ConsumerI on a certain coordinate.
bool World::isAConsumerI(Coordinate _pos){
	if (cell_is_empty(_pos)) return false;
	return isAConsumerI(mp->getMapItem(_pos)->monster);
}

// Check if a life is a ConsumerI.
bool World::isAConsumerI(Life* _life){
	if (_life == NULL) return false;
	return _life->getCellChar() == 'c';
}

// Check if there is a ConsumerII on a certain coordinate.
bool World::isAConsumerII(Coordinate _pos){
	if (cell_is_empty(_pos)) return false;
	return isAConsumerII(mp->getMapItem(_pos)->monster);
}

// Check if a life is a ConsumerII.
bool World::isAConsumerII(Life* _life){
	if (_life == NULL) return false;
	return _life->getCellChar() == 'X';
}

// Check if there is a Vegetal on a certain coordinate.
bool World::isAVegetal(Coordinate _pos){
	if (cell_is_empty(_pos)) return false;
	return mp->getMapItem(_pos)->monster->getCellChar() == 'v';
}

/* MAIN METHOD
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
    int numberVegetal;

    //if the amount of parameters is not equal to 8 + 1.
    if (_anzParam != 9) {
        exit_error(7);
    }

    // read command line values
    height = atoi(strings[1]);
    width = atoi(strings[2]);
    maxNumberOfSteps = atoi(strings[3]);
    numberConsumer1 = atoi(strings[4]);
    numberConsumer2 = atoi(strings[5]);
    numberVegetal = numberConsumer1 * 2; // something to eat for consumer1

    //check whether integer values are correct (greater than 0)
    if (maxNumberOfSteps < -1 || height <= 0 || width <= 0 ||
            numberConsumer1 < 0 || numberConsumer2 < 0) {
        exit_error(8);
    }

    //Check if the files are actual files.
    if (!is_file(strings[6]) || !is_file(strings[8]) || !is_file(strings[7])) {
        exit_error(9);
    }

    // Initialize values with the given files.
    Values::setInstance(strings[6], strings[7], strings[8]);

    // always clear the screen at the beginning
    clear_screen();

#ifdef WINDOWS
#ifdef DEBUG
    _CrtSetDbgFlag(_CRTDBG_ALLOC_MEM_DF | _CRTDBG_LEAK_CHECK_DF);
    _CrtSetReportMode(_CRT_ERROR, _CRTDBG_MODE_DEBUG);
#endif
#endif

    World* w = new World(width, height,
            numberConsumer1, numberConsumer2, maxNumberOfSteps, numberVegetal);
    delete (w);

#ifdef WINDOWS 
#ifdef DEBUG
    _CrtDumpMemoryLeaks();
#endif
#endif

    wait_for_keypressed();
    return 0;
}
