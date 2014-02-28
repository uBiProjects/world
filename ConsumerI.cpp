#ifndef ConsumerI_CPP
#define ConsumerI_CPP



#include "Life.h"
#include "Creature.h"
#include "ConsumerI.h"

ConsumerI:: ConsumerI(int x, int y) : Creature(x,y,(int)maxLifeTime,(int)rangeSmellAbgeben, (int) rangeSmellRiechen, (int) speed, (int) maxTimeWithoutFood, (char)cell_char){

}

ConsumerI:: ~ConsumerI(){

}

#endif
