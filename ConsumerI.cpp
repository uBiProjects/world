#ifndef ConsumerI_CPP
#define ConsumerI_CPP


#include "Utils.h"
#include "Life.h"
#include "Creature.h"
#include "ConsumerI.h"

ConsumerI:: ConsumerI(Coordinate _pos) : Creature(_pos, (int)maxLifeTime,(int)rangeSmellAbgeben, (int) rangeSmellRiechen, (int) speed, (int) maxTimeWithoutFood, (char)cell_char){

}

ConsumerI:: ~ConsumerI(){

}

#endif
