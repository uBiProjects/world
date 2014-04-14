#ifndef MAP_H
#define MAP_H

#include "Constants.h"


class Map {

	public :
		std::string plot;

		//constructor and destructor
		Map(int,int);
		virtual ~Map();

		//remove monster from space. update smell. called before smelling so.
		void removeMonster(Coordinate);

		//insert monster at int int. update smell.
		void insertMonster(Life*, Coordinate);

		//removeMonster and free monster.
		void deleteMonster(Coordinate);

		////getter methods for width, height and special mapItem.
		//int getWidth();
		//int getHeight();
		
		MapItem* getMapItem(Coordinate);
		int getnumberOfVegetal();
		int getnumberOfCI();
		int getnumberOfCII();
		int getAmountFreePosition();
		void print();
#ifdef DEBUG
		void print_detail();
#endif

	private :
		int max_C1;
		int max_C2;
		int max_V;
		int min_C1;
		int min_C2;
		int min_V;
		unsigned int width, height;
		std::string firstLinesToPrint;
		std::string spaceLinesToPrint;
		int amountFreePosition;

		MapItem*** cell;
		void updateEmission(int, int, int);
		void test();
		int numberOfCI, numberOfCII, numberOfVeg;
		
		void setfirstLinesToPrint();
		std::string printSeparatorS(int, int, char);
#ifdef DEBUG
		void printSeparator(int, int, char);
#endif

};


#endif

