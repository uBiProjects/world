
#include <iostream>
#include "stdlib.h"
#include "Utils.h"
#include "Life.h"
#include "Creature.h"
#include "ConsumerI.h"
#include "Values.h"

ConsumerI:: ConsumerI(Coordinate _pos) : Creature(_pos,
		(int) Values::getInstance()->getCIMLT(),
		(int) Values::getInstance()->getCISE(),
		(int) Values::getInstance()->getCISD(),//smell detection
		(int) Values::getInstance()->getCIS(),
		(int) Values::getInstance()->getCIMTWF(),
		(char) cell_char,
		Values::getInstance()->getCILT()){
}



ConsumerI:: ~ConsumerI(){

}
/*
void ConsumerI:: setSource(char* SOURCE){
		static const char* source = SOURCE;
}
*/
