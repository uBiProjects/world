/*
 * ConsumerII inherits from Creature.
 */
#include "Utils.h"
#include "Life.h"
#include "Creature.h"
#include "ConsumerII.h"
#include "Values.h"

/* Constructor
 */
ConsumerII::ConsumerII(Coordinate _pos) : Creature(_pos,
Values::getInstance()->getCIIMaxLifeTime(),             //max life time
Values::getInstance()->getCIISmellEmission(),           //smell emission
Values::getInstance()->getCIISmellDetection(),          //smell detection
Values::getInstance()->getCIISpeed(),                   //speed
Values::getInstance()->getCIIMaxTimeWithoutFood(),      //max time w/o food
(char) cell_char,                                       //char used for display
Values::getInstance()->getCIILifeTime(),                //life time
(int) (Values::getInstance()->getCIMaxLifeTime() / 4)) {//max pregnant time
}

/* Destructor
 */
ConsumerII:: ~ConsumerII(){
}

