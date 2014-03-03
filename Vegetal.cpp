#ifndef VEGETAL_CPP
#define VEGETAL_CPP

#include "Utils.h"
#include "Life.h"
#include "Vegetal.h"
#include "Values.h"


	Vegetal :: Vegetal (Coordinate _c) : Life(_c,
			Values::getInstance()->getPLT(),
			Values::getInstance()->getPSE(),
			Values::getInstance()->getPMLT(),
			cell_char) {
		// number_of_living_vegetal++;
	}
	
	Vegetal :: ~Vegetal(){
		// number_of_living_vegetal--;
	}
	
#endif

