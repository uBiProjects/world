/*
 * Creature inherits from Life.
 */
#include "Constants.h"
#include "Utils.h"
#include "Life.h"
#include "Creature.h"
#include "ConsumerI.h"
#include "ConsumerII.h"
#include "Vegetal.h"

/* Constructor
 */
Creature::Creature(Coordinate _pos,
        int _maxLifeTime,               //max life time
        int _smellEmission,             //smell emission
        int _smellDetection,            //smell detection
        int _speed,                     //speed
        int _maxTimeWithoutFood,        //max time w/o food
        char _char,                     //char used for display
        int _currentLifeTime,           //life time
        int _maxPregnantTime):			//max pregnant time
		Life(_pos, _currentLifeTime, _smellEmission, _maxLifeTime, _char) {

    //Sets values
	timeWithoutFood			= TWF_NEW;
    maxTimeWithoutFood		= _maxTimeWithoutFood;
    rangeOfSmellDetection	= _smellDetection;
    speed					= _speed;
    maxPregnantTime			= _maxPregnantTime;
    pregnantTime			= maxPregnantTime + 1;
	speedPregnant			= SPEED_MUL_P * _speed / SPEED_DIV_P;
	speedNormal				= _speed;
}

/* Destructor
 */
Creature:: ~Creature(){
}

// GETTER:

int Creature::getTimeWithoutFood() {
    return timeWithoutFood;
}

int Creature::getMaxTimeWithoutFood() {
    return maxTimeWithoutFood;
}

int Creature::getRangeOfSmellDetection() {
    return rangeOfSmellDetection;
}

int Creature::getSpeed() {
    return speed;
}

int Creature::getPregnantTime() {
    return pregnantTime;
}

int Creature::getMaxPregnantTime() {
    return maxPregnantTime;
}


// SETTER:

void Creature::setTimeWithoutFood(int _timeWithoutFood) {
    timeWithoutFood = _timeWithoutFood;
}

void Creature::incrementTimeWithoutFood() {
    timeWithoutFood++;
}

void Creature::setMaxTimeWithoutFood(int _maxTimeWithoutFood) {
    maxTimeWithoutFood = _maxTimeWithoutFood;
}

void Creature::setRangeOfSmellDetection(int _rangeOfSmellDetection) {
    rangeOfSmellDetection = _rangeOfSmellDetection;
}

void Creature::setSpeed(int _speed) {
    speed = _speed;
}

// sets the pregnantTime
void Creature::setPregnant(bool _pregnant) {
    if (_pregnant) {
        pregnantTime = 0;
		speed = speedPregnant;
    } else {
        pregnantTime = maxPregnantTime + 1;
		speed = speedNormal;
    }
}


// FUNCTIONS THAT TEST CURRENT STATE OF THE CREATURE:

// test if a creature is pregnant
bool Creature::isPregnant() {
    return (pregnantTime <= maxPregnantTime);
}

// returns true if a creature can become pregnant
bool Creature::isReadyForPregnant() {
	// to become pregnant the creature
	// 1. must be old enough
	// 2. not pregnant
	bool oldEnough = currentLifeTime > (maxLifeTime / AGE_DIV_P);
    return (pregnantTime > maxPregnantTime) && oldEnough;
}

// returns true if time without food > 0.5 * max time without food
bool Creature::isHungry() {
	// TWF/MTWF > MTWF-TWF/MTWF
	return  (HUNGRY_MUL * timeWithoutFood > maxTimeWithoutFood);
	
}

// OTHER FUNCTIONS:

// increment PregnantTime and return
// true, if it's time for birth.
bool Creature::incrementPregnantTime() {

    if (pregnantTime < maxPregnantTime) {
        pregnantTime++;
    }
    if (pregnantTime == maxPregnantTime) {
        pregnantTime++; // creature can become pregnant again
        return true; // the child will be born in this step
    }
    return false; // no child this time
}

///* Changes a creature's position
// */
//void Creature::changePosition(int _plusX, int _plusY) {
//    setX(getX() + _plusX);
//    setY(getY() + _plusY);
//}