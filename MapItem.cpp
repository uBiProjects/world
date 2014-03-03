
#include <stdlib.h>

#include "MapItem.h"



MapItem :: MapItem(){

	vEmission = 0;
	c2Emission = 0;
	c1Emission = 0;
	monster = NULL;

}

MapItem :: ~MapItem(){

	if(monster != NULL){

		monster->~Life();
		free (monster);
	}

}
