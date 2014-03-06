
#include "Utils.h"
#include "Life.h"
#include "Creature.h"
#include "ConsumerII.h"
#include "Values.h"


ConsumerII::ConsumerII(Coordinate _pos) : Creature(_pos,
		Values::getInstance()->getCIIMaxLifeTime(),
		Values::getInstance()->getCIISmellEmission(),
		Values::getInstance()->getCIISmellDetection(),
		Values::getInstance()->getCIISpeed(),
		Values::getInstance()->getCIIMaxTimeWithoutFood(),
		(char)cell_char,
		Values::getInstance()->getCIILifeTime(),
		40){
}

ConsumerII:: ~ConsumerII(){
}

