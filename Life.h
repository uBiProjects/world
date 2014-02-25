#ifndef LIFE_H
#define LIFE_H

class Life{

	protected:
		
		//positioin on map
		int x;
		int y;
		
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

		Life(int,int,int,int,int);
		virtual ~Life();
		
		

};

#endif
