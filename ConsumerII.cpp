#ifndef ConsumerII_CPP
#define ConsumerII_CPP



#include "ConsumerII.h"
#include "Creature.h"

ConsumerII:: ConsumerII(int x, int y): Creature(x,y,(int)maxLifeTime,(int)rangeSmellAbgeben, (int) rangeSmellRiechen, (int) speed, (int) maxTimeWithoutFood){
}

ConsumerII:: ~ConsumerII(){

}


#endif
