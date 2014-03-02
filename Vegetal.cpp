#ifndef VEGETAL_CPP
#define VEGETAL_CPP

#include "Utils.h"
#include "Life.h"
#include "Vegetal.h"


	Vegetal :: Vegetal (Coordinate _c) : Life(_c, 0, rangeSmellAbgeben, maxLifeTime, cell_char) {
		// number_of_living_vegetal++;
	}
	
	Vegetal :: ~Vegetal(){
		// number_of_living_vegetal--;
	}
	
#endif

