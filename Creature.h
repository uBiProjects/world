#ifndef CREATURE_H
#define CREATURE_H


#include "Life.h"

class Creature : public Life {

private:
	int timeWithoutFood;
	int timeLife;
	
	int maxTimeWithoutFood;
	int maxTimeLife;
	
	int rangeOfSmellDetection;
	int speed;
	
	int pregnantTime;
	int maxPregnantTime;
	
public:
	Creature(int, int, int, int, int,int, int);
	virtual ~Creature();
	
	//getter and setter methods
	int getTimeWithoutFood();
	int getLifeTime();
	int getRangeOfSmellDetection();
	int getSpeed();
	int getMaxTimeWithoutFood();
	int getMaxLifeTime();
	
	

	int getPregnantTime();
	int getMaxPregnantTime();
	bool increasePregnantTime();
	
	void setTimeWithoutFood(int);
	void setRangeOfSmellDetection(int);
	void setSpeed(int);
	void setMaxTimeWithoutFood(int);
	void setLifeTime(int);
	void setMaxLifeTime(int);
	void setPregnant(bool);
	
	void changePosition(int, int);
	
	void computeNewCoordinates(int, int);
	void checkWeatherFoodFound();

	int interact(Creature*, Life*);
	
	
	
};
#endif //CREATURE_H
