
#include <iostream>
#include "stdlib.h"
#include "Utils.h"
#include "Life.h"
#include "Creature.h"
#include "ConsumerI.h"
#include "Values.h"

/* Constructor
 */
ConsumerI:: ConsumerI(Coordinate _pos) : Creature(_pos,
		(int) Values::getInstance()->getCIMaxLifeTime(),        //max life time
		(int) Values::getInstance()->getCISmellEmission(),      //smell emission
		(int) Values::getInstance()->getCISmellDetection(),     //smell detection
		(int) Values::getInstance()->getCISpeed(),              //speed
		(int) Values::getInstance()->getCIMaxTimeWithoutFood(), //max time w/o food
		(char) cell_char,                                       //char used for display
		Values::getInstance()->getCILifeTime(),                 //life time
		(int) (Values::getInstance()->getCIMaxLifeTime()/4)){    //max pregnant time                                  
}


/* Destructor
 */
ConsumerI:: ~ConsumerI(){

}

