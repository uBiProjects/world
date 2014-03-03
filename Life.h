#ifndef LIFE_H
#define LIFE_H

// #include "Utils.h"

#include "Utils.h"

class Life{

	protected:
		
		
		//positioin on map
		Coordinate pos;
		// char on screen
		char cell_char;
		//current life time
		int currentLifeTime;

		//Maximal life time
		int maxLifeTime;
		
		//Smell range
		int stinkRange;
		
		bool walkable;
		
		
	public:
		


		int getX();
		int getY();
		Coordinate getPos();
		int getCurrentLifeTime();
		
		int getMaxLifeTime();
		int getStinkRange();
		
		void setX(int);
		void setY(int);
		void setPos(Coordinate);

		void setCurrentLifeTime(int);
		
		bool isWalkable();
		void setWalkable(bool);

		char getCellChar();
		void setCellChar(char);

		Life(Coordinate,int,int,int,char);
		virtual ~Life();
				

};

#endif
