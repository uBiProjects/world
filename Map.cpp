
//utility includes
#include <iostream>
#include <stdlib.h>
#include <string.h>
#include "Utils.h"


#include "Life.h"		//used in MapItem
#include "MapItem.h"	//used in Map.h
#include "Map.h"

#include "Creature.h"
#include "ConsumerI.h"
#include "ConsumerII.h"
#include "Map.h"
#include "Vegetal.h"

/**
 * Constructor:
 * initializes the array of
 */
Map :: Map(int _width, int _height){

	//save width and height
	width = _width;
	height = _height;
	

	//initialize the array
	cell = (MapItem***) malloc(width * sizeof(MapItem**));

	for (int var = 0; var < height; ++var) {
		cell[var] =(MapItem**) malloc(height * sizeof(MapItem*));
	}

	//initialize array with null values and null
	for (int x = 0; x < width; x ++) {
		for (int y = 0; y < height; y ++) {

			cell[x][y] = new MapItem();
		}
	}

	//initialize amountFreePosition
	amountFreePosition = _width * _height;
}

/**
 * Destructor:
 * frees the array.
 */
Map :: ~Map() {
	Coordinate c;
	//destroy existing monster if they exist
	for(int x = 0; x < width; x ++){
		for(int y = 0; y < height; y ++){
			if(cell[x][y]->monster != NULL){
				c.x = x; c.y = y;
				deleteMonster(c);
//				free(cell[x][y]->monster);
			}
		}
	}

	//the free emission
	for (int var = 0; var < height; ++var) {
		free(cell[var]);
	}

	//initialize the array
	free(cell);
}


/**
 * remove monster from a special field. This method does not
 * completely delete the monster, but it only removes the
 * pointer to the special monster out of the map
 */
void Map:: removeMonster(Coordinate _c){

	//check whether at position (_x, _y) there is a monster to be removed
//	if(emission[_x][_y].monster == NULL) {
//		std:: cout << ("Map::removeMonster.	 Error. Pointer to monster to be removed is null");
//	} 
//	else
//	if (*(emission[_x][_y].monster) == NULL) {
//		std:: cout << ("Map::removeMonster.	 Error. Monster to be removed is null");
//	}

	//go through the stinking fields
	updateEmission(*((cell[_c.x][_c.y]->monster)), _c.x, _c.y, -1);

	//remove monster pointer
	cell[_c.x][_c.y]->monster = NULL;

	//update the current amount of free position
	amountFreePosition --;
	
}

/**
 * insert monster to map and update the smell emission of Life* _life
 * @param _life the life which is added
 * @param _x, _y the coordinates where to insert the Life.
 */
void Map::insertMonster(Life* _life, Coordinate _c){

	//check whether at position (_x, _y) there is already a monster
	//if(emission[_x][_y].monster != NULL){
	//|| *(emission[_x][_y].monster) == NULL) {
	//	std:: cout <<("Map::removeMonster.	 Error. insert at occupied position");
	//}

	//insert monster
	cell[_c.x][_c.y]->monster = _life;

	//insert emission
	updateEmission(*(cell[_c.x][_c.y]->monster), _c.x, _c.y, 1);

	//update the intern representation of the current position of the life.
	_life->setX(_c.x);
	_life->setY(_c.y);

	//update the current amount of free position
	amountFreePosition ++;
}

/**
 * remove monster from list and emission array and then free the pointer to life.
 */
void Map::deleteMonster(Coordinate _c){

	Life* life = cell[_c.x][_c.y]->monster;
	removeMonster(_c);
	free(life);
}


/**
 * add or reduce the emission of a monster with the type of Life l
 *
 * @param l the Life of which time the emission is updated
 * @param _x, _y the coordiantes
 * @param _multiplicator multiplied to the normal emission of Life in range.
 * 			Tpyically used +- 1.
 */
void Map:: updateEmission(Life l, int _x, int _y, int _multiplicator){

	//go through the stinking fields
	for(int x = _x - cell[_x][_y]->monster->getStinkRange();
			x <= _x + cell[_x][_y]->monster->getStinkRange(); x ++) {

		for(int y = _y - cell[_x][_y]->monster->getStinkRange();
				y <= _y + cell[_x][_y]->monster->getStinkRange(); y ++) {

			//calculate the 'real' current position mod size
			int realX = modulo(x, width);
			int realY = modulo(y, height);

			//calculate
			int addition = _multiplicator *
					(cell[_x][_y]->monster->getStinkRange() + 1
					- MIN(abs(x - _x), abs (y - _y)));

			//switch the monster type and reduce the stink range in fields
			if(dynamic_cast<ConsumerI*> (cell[_x][_y]->monster)){
				cell[realX][realY]->c1Emission += addition;
			} else if(dynamic_cast<ConsumerII*> (cell[_x][_y]->monster)){
				cell[realX][realY]->c2Emission += addition;
			} else if(dynamic_cast<Vegetal*> (cell[_x][_y]->monster)){
				cell[realX][realY]->vEmission += addition;
			} else {
				std:: cout << "Map::updateEmission Error. ISA relationship is not complete.";
			}
		}
	}
}


/**
 * print the current map.
 * @param _detailed if detailed, also print stink value
 */
void Map::print(bool _detailed) {
	sleepd(50);

#ifndef DEBUG
	clear_screen();
#endif


	//size of cells in chars
	int sizeCell = 3;
	char* art;

	if(_detailed){
    	sizeCell = 12;
	}
	//first line
	std::cout << "\n +";
    for (int i = 0; i < width; i++) {

    	for(int cchar = 0; cchar < sizeCell; cchar ++) {
    		std::cout << "-";
    	}
		std::cout << "+";
    }

    //
    std::cout << "\n";
    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            if (j == 0) {
                std::cout << " |";
            }

            if (dynamic_cast<ConsumerI*>( cell[j][i]->monster)) {

            	//fetch the identifier of Life
            	Creature * c = (Creature*)  cell[j][i]->monster;
                if ((*c).getPregnantTime()<((*c)).getMaxPregnantTime()) {
                   art = "p";
                } else {
                    art = "c";
                }


                //print if not detailed
                if(!_detailed) {
                    std::cout << art;
                	for(int cchar = 0; cchar < sizeCell - 1; cchar ++) {
                		std::cout << " ";
                	}
                    std::cout << "|";
                }
            } else if (dynamic_cast<ConsumerII*> ( cell[j][i]->monster)) {

            	//fetch the identifier of Life
            	Creature * c = (Creature*)  cell[j][i]->monster;
                if ((*c).getPregnantTime()<((*c)).getMaxPregnantTime()) {
                   art = "P";
                } else {
                    art = "C";
                }

                //print if not detailed
            	if(!_detailed) {

            		std:: cout << art;
                	for(int cchar = 0; cchar < sizeCell - 1; cchar ++) {
                		std::cout << " ";
                	}
                    std::cout << "|";
            	}

            } else if (dynamic_cast<Vegetal*> ( cell[j][i]->monster)) {

            	art = "v";

                //print if not detailed
            	if(!_detailed) {

                    std::cout << art;
//                	for(int cchar = 0; cchar < sizeCell - 1 && _detailed; cchar ++) {           geändert Thomas
					for (int cchar = 0; cchar < sizeCell - 1; cchar++) {
						std::cout << " ";
                	}
                    std::cout << "|";
            	}

            } else {

            	art = " ";

                //print if not detailed
            	if(!_detailed) {

            		std::cout << art;
                	for(int cchar = 0; cchar < sizeCell - 1; cchar ++) {
                		std::cout << " ";
                	}
                    std::cout << "|";
            	}
            }

            if (_detailed){

                std::cout <<  art << "e" << cell[j][i]->vEmission << "." << cell[j][i]->c1Emission << "." << cell[j][i]->c2Emission;
            	for(int cchar = 0; cchar < sizeCell  - (cell[j][i]->vEmission/10 + 1)- (cell[j][i]->c1Emission/10 + 1)  - (cell[j][i]->c2Emission/10 + 1) - 2 - 2; cchar ++) {
            		std::cout << " ";
            	}
        		std::cout << "|";
            }

        }

        //lines
        std::cout << "\n";
        for (int j = 0; j < width; j++) {
            if (j == 0) {

                std::cout << " +";
            }
        	for(int cchar = 0; cchar < sizeCell; cchar ++) {
        		std::cout << "-";
        	}
    		std::cout << "+";

        }
        std::cout << "\n";
    }
}

/**
 * simple getter method
 */
int Map:: getAmountFreePosition(){
	return amountFreePosition;
}

MapItem* Map :: getMapItem(Coordinate _c){
	return cell[_c.x][_c.y];
}

int Map:: getWidth(){
	return width;
}
int Map:: getHeight(){
	return height;
}

void Map:: test(){

	Map* map = new Map(10,10);
	map->insertMonster(new ConsumerI(Coordinate(2, 2)), Coordinate(2, 2));
	map->print(true);
	map->insertMonster(new ConsumerI(Coordinate(2, 3)), Coordinate(2, 3));
	map->print(true);
	map->removeMonster(Coordinate(2, 2));
	map->removeMonster(Coordinate(2, 3));
	map->print(true);
}


