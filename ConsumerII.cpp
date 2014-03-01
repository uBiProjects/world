#ifndef ConsumerII_CPP
#define ConsumerII_CPP


#include "Utils.h"
#include "Life.h"
#include "Creature.h"
#include "ConsumerII.h"

ConsumerII::ConsumerII(Coordinate _pos) : Creature(_pos, (int)maxLifeTime, (int)rangeSmellAbgeben, (int)rangeSmellRiechen, (int)speed, (int)maxTimeWithoutFood, (char)cell_char){
}

ConsumerII:: ~ConsumerII(){

}


#endif
