#ifndef ConsumerII_CPP
#define ConsumerII_CPP


#include "Utils.h"
#include "Life.h"
#include "Creature.h"
#include "ConsumerII.h"
#include "Values.h"

ConsumerII::ConsumerII(Coordinate _pos) : Creature(_pos,
		Values::getInstance()->getCIIMLT(),
		Values::getInstance()->getCIISE(),
		Values::getInstance()->getCIISD(),
		Values::getInstance()->getCIIS(),
		Values::getInstance()->getCIIMTWF(),
		(char)cell_char,
		Values::getInstance()->getCIILT()){
	// number_of_living_creaturesII++;
}

ConsumerII:: ~ConsumerII(){
	// number_of_living_creaturesII--;
}


#endif
