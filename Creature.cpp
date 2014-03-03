
#include <iostream>
#include <typeinfo>

#include "Utils.h"
#include "Life.h"
#include "Creature.h"
#include "ConsumerI.h"
#include "ConsumerII.h"
#include "Vegetal.h"


Creature::Creature(Coordinate _pos, 
					int _maxLifeTime, 
					int _rangeSmellAbgeben, 
					int _rangeSmell, 
					int _speed, 
					int _maxTimeWithoutFood, 
					char _char, 
					int _currentLifeTime) : Life(_pos, _currentLifeTime, _rangeSmellAbgeben, _maxLifeTime, _char) {

	// timeLife = _currentLifeTime;
	// maxTimeLife = _maxLifeTime;

	timeWithoutFood = 0;
	maxTimeWithoutFood = _maxTimeWithoutFood;
	rangeOfSmellDetection = _rangeSmell;
	speed					= _speed;
	maxPregnantTime			= 5;
	pregnantTime			= maxPregnantTime + 1;		
}

Creature:: ~Creature(){
}

// _coordianteX, _coordinateY, _lifeTime, _maxLifeTime, _rangeSmellAbgeben
// getter- and setter methods
// getter methods

int Creature::getTimeWithoutFood(){
	return timeWithoutFood;
}
int Creature::getMaxTimeWithoutFood(){
	return maxTimeWithoutFood;
}

//int Creature::getLifeTime(){
//	return timeLife;
//}
//int Creature::getMaxLifeTime(){
//	return maxTimeLife;
//}

//void Creature::setMaxLifeTime(int _maxTimeLife){
//	maxTimeLife = _maxTimeLife;
//}

//void Creature::setLifeTime(int _timeLife){
//	timeLife = _timeLife;
//}

//void Creature::incrementLifeTime(){
//	timeLife++;
//}

int Creature::getRangeOfSmellDetection(){
	return rangeOfSmellDetection;
}

int Creature::getSpeed(){
	return speed;
}



//setter methods

void Creature::setTimeWithoutFood(int _timeWithoutFood){
	timeWithoutFood = _timeWithoutFood;
}
void Creature::incrementTimeWithoutFood(){
	timeWithoutFood++;
}
void Creature::setMaxTimeWithoutFood(int _maxTimeWithoutFood){
	maxTimeWithoutFood = _maxTimeWithoutFood;
}

void Creature::setRangeOfSmellDetection(int _rangeOfSmellDetection){
	rangeOfSmellDetection = _rangeOfSmellDetection;
}

void Creature::setSpeed(int _speed){
	speed = _speed;
}


/*void Creature::computeNewCoordinates(int _xChangement, int _yChangement){
	x += _xChangement;
	y += _yChangement;
}*/	

// returns 0 = reproduce
// returns 1 = i can eat that
// return -1 = i can walk
// return -2 = nothing to do 
// TODO only try to reproduce if not already Pregnant
int Creature:: interact(Creature* _a, Life* _b){
	
	// actions for consumerI
	if(dynamic_cast<ConsumerI*>( _a ) ){
		if(dynamic_cast<ConsumerI*>( _b ) ){		// i can reproduce
			return 0;
		}
		else if (dynamic_cast<Vegetal*>(_b)){		// i can eat that
			return 1;
		}
		else if (dynamic_cast<ConsumerII*>(_b)) {	// i can not do anything
			return -2;								
		}											// i can walk cell is empty
		return -1;
	}
	else if(dynamic_cast<ConsumerII*>( _a ) ){
		if(dynamic_cast<ConsumerI*>( _b ) ){		// i can eat that
			return 1;
		} else if(dynamic_cast<ConsumerII*>( _b ) ){ // i can reproduce
			return 0;
		} else if (dynamic_cast<Vegetal*>(_b)){		// cell is bocked
			return -2;
		}											// i can walk cell is empty
		return -1;
	}

	// this should never happen(int) Values::getInstance()->getCIMLT()
	exit_error(5);
	return -3;
}



void Creature:: changePosition(int _plusX, int _plusY){
	setX(getX() + _plusX);
	setY(getY() + _plusY);
}


//void Creature::checkWeatherFoodFound() {
//
//}


int Creature:: getPregnantTime(){
	return pregnantTime;	
}
int Creature :: getMaxPregnantTime(){
	return maxPregnantTime;
}

// set pregnantTime
void Creature:: setPregnant(bool _pregnant){
	if(_pregnant){
		pregnantTime = 0;
	
	}
	else{
		pregnantTime = maxPregnantTime + 1;
	}

}

// increment PregnantTime and return
// true, if it's time for birth.
bool Creature ::incrementPregnantTime(){
	
	if(pregnantTime < maxPregnantTime){
		pregnantTime ++;
	}
	if(pregnantTime == maxPregnantTime){		
		pregnantTime ++;			// creature can become pregnant again
		return true;				// the child will be born in this step
	}
	return false;					// no child this time
}
