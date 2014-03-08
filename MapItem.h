#ifndef MAP_ITEM_H
#define MAP_ITEM_H

#include "Life.h"

class MapItem {

	public:
		int vEmission;
		int c1Emission;
		int c2Emission;
		Life* monster;
		
		bool cell_empty();

		MapItem();
		~MapItem();
		

};


#endif
