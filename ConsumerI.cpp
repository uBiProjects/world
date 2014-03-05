
#include <iostream>
#include "stdlib.h"
#include "Utils.h"
#include "Life.h"
#include "Creature.h"
#include "ConsumerI.h"
#include "Values.h"

ConsumerI:: ConsumerI(Coordinate _pos) : Creature(_pos,
		(int) Values::getInstance()->getCIMaxLifeTime(),
		(int) Values::getInstance()->getCISmellEmission(),
		(int) Values::getInstance()->getCISmellDetection(),//smell detection
		(int) Values::getInstance()->getCISpeed(),
		(int) Values::getInstance()->getCIMaxTimeWithoutFood(),
		(char) cell_char,
		Values::getInstance()->getCILifeTime(),
		20){
}



ConsumerI:: ~ConsumerI(){

}
/*
void ConsumerI:: setSource(char* SOURCE){
		static const char* source = SOURCE;
}
*/
