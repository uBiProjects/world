#ifndef CREATURE_H
#define CREATURE_H


class Creature : public Life {

private:
	

	int timeWithoutFood;
	int maxTimeWithoutFood;
	int rangeOfSmellDetection;
	int speed;
	int speedNormal;
	int speedPregnant;
	
	int pregnantTime;					// if pregnatTime >maxPregnantTime => can become Pregnant
										// if pregnatTime <maxPregnantTime => is pregnant
										// if pregnatTime =maxPregnantTime => a child will be born in this step
	int maxPregnantTime;
	
public:

	Creature(Coordinate, int, int, int,int, int, char, int,int);
	virtual ~Creature();
	
	//getter and setter methods
	int getTimeWithoutFood();
//	int getLifeTime();
	int getRangeOfSmellDetection();
	int getSpeed();
	int getMaxTimeWithoutFood();
//	int getMaxLifeTime();
	
	

	int getPregnantTime();
	int getMaxPregnantTime();
	bool incrementPregnantTime();
	
	void setTimeWithoutFood(int);
	void incrementTimeWithoutFood();
	void setRangeOfSmellDetection(int);
	void setSpeed(int);
	void setMaxTimeWithoutFood(int);
//	void setLifeTime(int);
//	void incrementLifeTime();
//	void setMaxLifeTime(int);
	void setPregnant(bool);
	
//	void changePosition(int, int);
	
	void computeNewCoordinates(int, int);
	void checkWeatherFoodFound();
	bool isPregnant();
	bool isReadyForPregnant();
	bool isHungry();
//	int interact(Creature*, Life*);
	
	
	
};
#endif //CREATURE_H
