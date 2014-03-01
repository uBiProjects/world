#ifndef WORDL_H
#define WORDL_H

#include "Life.h"
#include "Creature.h"
#include "Utils.h"

class World {

private:

	Map* mp;
	//
	int step;
	int maxsteps;
	int numberConsumer1;
	int numberConsumer2;
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
	
	void timePassed(Creature*,int,int);
 	// int modulo(int, int);
 	bool smell(Creature*, int*, int*);

	bool cell_is_empty(Coordinate);
 	bool isAConsumerI(int, int);
 	bool isAConsumerI(Life*);
 	bool isAConsumerII(int, int);
 	bool isAConsumerII(Life*);
 	bool isAVegetal(int, int);
 	bool isACreature(int, int);
 	
};

#endif
