#ifndef ConsumerI_CPP
#define ConsumerI_CPP



#include "ConsumerI.h"
#include "Creature.cpp"

ConsumerI:: ConsumerI(int x, int y) : Creature(x,y,(int)maxLifeTime,(int)rangeSmellAbgeben, (int) rangeSmellRiechen, (int) speed, (int) maxTimeWithoutFood){

}

ConsumerI:: ~ConsumerI(){

}

#endif
