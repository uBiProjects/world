#ifndef ConsumerII_CPP
#define ConsumerII_CPP



#include "Life.h"
#include "Creature.h"
#include "ConsumerII.h"

ConsumerII:: ConsumerII(int x, int y): Creature(x,y,(int)maxLifeTime,(int)rangeSmellAbgeben, (int) rangeSmellRiechen, (int) speed, (int) maxTimeWithoutFood){
}

ConsumerII:: ~ConsumerII(){

}


#endif
