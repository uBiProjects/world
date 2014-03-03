#ifndef WORDL_H
#define WORDL_H

#include "Utils.h"
#include "Life.h"
#include "Creature.h"
#include "Vegetal.h"

class World {

private:

	Map* mp;
	//
	int step;
	int maxsteps;
	const static int stepsForNewVegetal=3;		// new vegetal each 2. step.
	int numberConsumer1;
	int numberConsumer2;
	int wwidth, wheight;
	Coordinate getRandomFreePosition();
	
public:
	World(int, int, int,int,int,int);
	bool initializeCreature(int,int,int);
	// bool initializeLife(int, typename) {

	void print();
	Life getLife(int, int);
	void setLife(int, int, Life);
	void performOneStep();
	void run();	
	int testfree();

	void timePassed(Creature*);
	void timePassed(Vegetal*);
 	// int modulo(int, int);
 	bool smell(Creature*, Coordinate*);
	bool creaturMustDie(Creature*);
	bool cell_is_empty(Coordinate);
	bool isAConsumerI(Coordinate);
 	bool isAConsumerI(Life*);
	bool isAConsumerII(Coordinate);
 	bool isAConsumerII(Life*);
	bool isAVegetal(Coordinate);
	bool isACreature(Coordinate);
	bool createNewVegetal(Coordinate);
	bool createNewConsumerI(Coordinate);
	bool createNewConsumerII(Coordinate);
	void setAllConsumersWalkable();
	Coordinate normCoordinateToWorld(Coordinate);
	Coordinate getAFreePositionAroundme(Coordinate);
	void impregnate(Creature*, Creature*);
	void giveBirthToABaby(Creature*);
};

#endif
