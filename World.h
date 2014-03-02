#ifndef WORDL_H
#define WORDL_H

#include "Utils.h"
#include "Life.h"
#include "Creature.h"

class World {

private:

	Map* mp;
	//
	int step;
	int maxsteps;
	int stepsForNewVegetal=2;		// new vegetal each 2. step.
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
	int World::testfree();

	void timePassed(Creature*);
 	// int modulo(int, int);
 	bool smell(Creature*, Coordinate*);

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
};

#endif
