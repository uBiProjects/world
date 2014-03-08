/* 
 * Vegetal class
 */
#include "Utils.h"
#include "Life.h"
#include "Vegetal.h"
#include "Values.h"

//Constructor:
Vegetal::Vegetal(Coordinate _c) : 
		Life(_c,
			Values::getInstance()->getVegLifeTime(),
			Values::getInstance()->getVegSmellEmission(),
			Values::getInstance()->getVegMaxLifeTime(),
			cell_char) {
}

//Destructor:
Vegetal::~Vegetal() {
}
