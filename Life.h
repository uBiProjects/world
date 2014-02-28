#ifndef LIFE_H
#define LIFE_H

class Life{

	protected:
		
		//positioin on map
		int x;
		int y;
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
		int getCurrentLifeTime();
		
		int getMaxLifeTime();
		int getStinkRange();
		
		void setX(int);
		void setY(int);
		
		void setCurrentLifeTime(int);
		
		bool isWalkable();
		void setWalkable(bool);

		char getCellChar();
		void setCellChar(char);

		Life(int,int,int,int,int,char);
		virtual ~Life();
		
		

};

#endif
