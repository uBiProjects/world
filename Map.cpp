/*
 * Map class.
 */
#include <iostream>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>		//printf

#include "Utils.h"
#include "Life.h"		//used in MapItem
#include "MapItem.h"            //used in Map.h
#include "Map.h"
#include "Creature.h"
#include "ConsumerI.h"
#include "ConsumerII.h"
#include "Vegetal.h"

/**
 * Constructor:
 * initializes the array
 */
Map::Map(int _width, int _height) {

    //save width and height
    width = _width;
    height = _height;

    //initialize the array
    cell = (MapItem***) malloc(width * sizeof (MapItem**));

    for (unsigned int var = 0; var < width; var++) {
        cell[var] = (MapItem**) malloc(height * sizeof (MapItem*));
    }

    //initialize array with null values
    for (unsigned int x = 0; x < width; x++) {
        for (unsigned int y = 0; y < height; y++) {

            cell[x][y] = new MapItem();
        }
    }

    //initialize amountFreePosition
    amountFreePosition = _width * _height;
}

// return Creature #s
int Map::getnumberOfCI(){
	return numberOfCI;
}

int Map::getnumberOfCII(){
	return numberOfCII;
}

// return Vegetal #
int Map::getnumberOfVegetal(){
	return numberOfVeg;
}
/**
 * Destructor:
 * frees the array.
 */
Map::~Map() {
    Coordinate c;
    //destroy existing monster if they exist
    for (unsigned int x = 0; x < width; x++) {
        for (unsigned int y = 0; y < height; y++) {
            delete(cell[x][y]);
        }
    }

    //the free emission
	for (unsigned int var = 0; var < width; var++) {
        free(cell[var]);
    }

    //initialize the array
    free(cell);
}

/**
 * remove monster from a specific field. This method does not
 * completely delete the monster. It only removes the
 * pointer to the specific monster out of the map.
 */
void Map::removeMonster(Coordinate _c) {

    //go through the stinking fields
    updateEmission(_c.x, _c.y, -1);

    //remove monster pointer
    cell[_c.x][_c.y]->monster = NULL;

    //update the current amount of free positions
    amountFreePosition++;
}
/**
 * Insert a monster onto the map and update the smell emission of Life* _life
 * @param _life the life which is added
 * @param _x, _y the coordinates where to insert the Life.
 */
void Map::insertMonster(Life* _life, Coordinate _c) {

    //insert monster
    cell[_c.x][_c.y]->monster = _life;

    //insert emission
    updateEmission(_c.x, _c.y, 1);

    //update the intern representation of the current position of the life.
    _life->setX(_c.x);
    _life->setY(_c.y);

    //update the current amount of free position
    amountFreePosition--;
}
/**
 * Remove monster from list and emission array and then free the pointer to life.
 */
void Map::deleteMonster(Coordinate _c) {

    Life* life = cell[_c.x][_c.y]->monster;
    removeMonster(_c);
    free(life);
}

/**
 * Add or reduce the emission of a monster at a certain position
 *
 * @param _x, _y the coordinates
 * @param _multiplicator multiplied to the normal emission of Life in range.
 * 			Typically used +- 1.
 */
void Map::updateEmission(int _x, int _y, int _multiplicator) {

    //go through the stinking fields
    for (int x = _x - cell[_x][_y]->monster->getStinkRange();
            x <= _x + cell[_x][_y]->monster->getStinkRange(); x++) {

        for (int y = _y - cell[_x][_y]->monster->getStinkRange();
                y <= _y + cell[_x][_y]->monster->getStinkRange(); y++) {

            //calculate the 'real' current position mod size
            int realX = modulo(x, width);
            int realY = modulo(y, height);

            int addition = _multiplicator *
                    (cell[_x][_y]->monster->getStinkRange() + 1
                    - MAX(abs(x - _x), abs(y - _y)));

            //switch the monster type and reduce the stink range in fields
            if (dynamic_cast<ConsumerI*> (cell[_x][_y]->monster)) {
                cell[realX][realY]->c1Emission += addition;
            } else if (dynamic_cast<ConsumerII*> (cell[_x][_y]->monster)) {
                cell[realX][realY]->c2Emission += addition;
            } else if (dynamic_cast<Vegetal*> (cell[_x][_y]->monster)) {
                cell[realX][realY]->vEmission += addition;
            } else {
                exit_error(11);
            }
        }
    }
}


/**
 * print the current map.
 * @param _detailed if detailed (also print stink value)
 */
void Map::print(bool _detailed) {

    int sumTWFCI = 0, sumMTWFCI = 0;
    int sumTWFCII = 0, sumMTWFCII = 0;

    //Reset Counters for numberOf* values
    numberOfCI = 0;
    numberOfCII = 0;
    numberOfVeg = 0;

#ifdef FASTRUN
#ifndef DEBUG1
    sleepd(1);
#endif
#else
    sleepd(500);
#endif

#ifdef CLEAR_SCREEN
    clear_screen(false);
#endif

    //size of cells in chars
    int sizeCell = 3;
    char* art;

    if (_detailed) {
        sizeCell = 12;
    }

    /*
     * print headline
     */
    //first line
    std::cout << "\n";

    printSeparator(width, sizeCell, '+');

    //first cell
    std::cout << " |";
    for (int x = 0; x < 2; x++) {
        std::cout << " ";
    }
    //second line containing line numbers
    for (unsigned int i = 0; i < width; i++) {

        std::cout << " |";
        for (int x = 0; x < (3 - length(i)) / 2; x++) {
            std::cout << " ";
        }
        std::cout << i;
        for (int x = 0; x < (3 - length(i)) / 2 + (3 - length(i)) % 2 - 1; x++) {
            std::cout << " ";
        }
    }
    std::cout << " +";

    printSeparator(width, sizeCell, '+');

    for (unsigned int i = 0; i < height; i++) {

        //first cell
        std::cout << " |";
        for (int x = 0; x < (3 - length(i)) / 2; x++) {
            std::cout << " ";
        }
        std::cout << i;
        for (int x = 0; x < (3 - length(i)) / 2 + (3 - length(i)) % 2; x++) {
            std::cout << " ";
        }

        for (unsigned int j = 0; j < width; j++) {
            if (j == 0) {
                std::cout << "|";
            }

            if (dynamic_cast<ConsumerI*> (cell[j][i]->monster)) {
                //increase numberOfCI:
                numberOfCI++;
                //fetch the identifier of Life
                Creature * c = (Creature*) cell[j][i]->monster;
                if ((*c).getPregnantTime()<((*c)).getMaxPregnantTime()) {
                    art = (char*) "\033[1;34mp\033[0m";
                } else {
                    art = (char*) "\033[1;34mc\033[0m";
                }
                // sum TWF
                sumTWFCI += c->getTimeWithoutFood();
                sumMTWFCI += c->getMaxTimeWithoutFood();

                //print if not detailed
                if (!_detailed) {
                    std::cout << " " << art;
                    for (int cchar = 0; cchar < sizeCell - 2; cchar++) {
                        std::cout << " ";
                    }
// std::cout << "|";
					std::cout << " ";
                }
            } else if (dynamic_cast<ConsumerII*> (cell[j][i]->monster)) {
                //increase numberOfCII:
                numberOfCII++;


                //fetch the identifier of Life
                Creature * c = (Creature*) cell[j][i]->monster;
                if ((*c).getPregnantTime()<((*c)).getMaxPregnantTime()) {
                    art = (char*) "\033[1;31mQ\033[0m";
                } else {
                    art = (char*) "\033[1;31mX\033[0m";
                }
                // sum TWF
                sumTWFCII += c->getTimeWithoutFood();
                sumMTWFCII += c->getMaxTimeWithoutFood();

                //print if not detailed
                if (!_detailed) {

                    std::cout << " " << art;
                    for (int cchar = 0; cchar < sizeCell - 2; cchar++) {
                        std::cout << " ";
                    }
// std::cout << "|";
					std::cout << " ";
				}

            } else if (dynamic_cast<Vegetal*> (cell[j][i]->monster)) {

                art = (char*) "\033[1;32mv\033[0m";

                //increase numberOfVeg
                numberOfVeg++;

                //print if not detailed
                if (!_detailed) {

                    std::cout << " " << art;
                    for (int cchar = 0; cchar < sizeCell - 2; cchar++) {
                        std::cout << " ";
                    }
// std::cout << "|";
					std::cout << " ";
				}

            } else {

                art = (char*) " ";

                //print if not detailed
                if (!_detailed) {

                    std::cout << " " << art;
                    for (int cchar = 0; cchar < sizeCell - 2; cchar++) {
                        std::cout << " ";
                    }
// std::cout << "|";
					std::cout << " ";
                }
            }

            if (_detailed) {

                std::cout << art << "e" << cell[j][i]->vEmission << "." << cell[j][i]->c1Emission << "." << cell[j][i]->c2Emission;
                int sizeD = sizeCell - (length(cell[j][i]->vEmission)) - length(cell[j][i]->c1Emission) - length(cell[j][i]->c2Emission) - 2 - 2;

                for (int cchar = 0; cchar < sizeD; cchar++) {
                    std::cout << " ";
                }
                std::cout << "|";
            }

        }

//printSeparator(width, sizeCell, '+');
		printSeparator(width, sizeCell, ' ');

    }
    int hungry;
    if (sumMTWFCI == 0) hungry = 0;
    else hungry = sumTWFCI * 100 / sumMTWFCI;
    printf("Nr of Consumer1: %4i  hungry:%3i%%\n", numberOfCI, hungry);
    if (sumMTWFCII == 0) hungry = 0;
    else hungry = sumTWFCII * 100 / sumMTWFCII;
    printf("Nr of Consumer2: %4i  hungry:%3i%%\n", numberOfCII, hungry);
    printf("Nr of Vegetals:  %4i\n", numberOfVeg);
}


//Prints the separators for the grid
void Map:: printSeparator(int _width, int _sizeCell, char _separationChar) {

    //third line (separator)
    std::cout << "\n +";

//  std::cout << "---" << _separationChar;
	std::cout << "   " << _separationChar;

    for (int i = 0; i < _width; i++) {

        for (int cchar = 0; cchar < _sizeCell; cchar++) {
//std::cout << "-";
			std::cout << " ";
		}
        std::cout << _separationChar;
    }
    std::cout << "\n";
}

// GETTER:

int Map::getAmountFreePosition() {
    return amountFreePosition;
}

MapItem* Map::getMapItem(Coordinate _c) {
    return cell[_c.x][_c.y];
}

int Map::getWidth() {
    return width;
}

int Map::getHeight() {
    return height;
}

// FUNCTION ONLY USED FOR TESTING PURPOSES:

void Map::test() {

    Map* map = new Map(10, 10);
    map->insertMonster(new ConsumerI(Coordinate(2, 2)), Coordinate(2, 2));
    map->print(true);
    map->insertMonster(new ConsumerI(Coordinate(2, 3)), Coordinate(2, 3));
    map->print(true);
    map->removeMonster(Coordinate(2, 2));
    map->removeMonster(Coordinate(2, 3));
    map->print(true);
}
