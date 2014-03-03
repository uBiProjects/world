
#include "Utils.h"
#include "Life.h"
#include "Vegetal.h"
#include "Values.h"


	Vegetal :: Vegetal (Coordinate _c) : Life(_c,
			Values::getInstance()->getPLT(),
			Values::getInstance()->getPSE(),
			Values::getInstance()->getPMLT(),
			cell_char) {
	}
	
	Vegetal :: ~Vegetal(){
	}
