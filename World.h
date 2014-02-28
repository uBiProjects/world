#ifndef WORDL_H
#define WORDL_H

#include "Life.h"
#include "Creature.h"
#include "Utils.h"

class World {

private:
	static const int width = 10, height = 10;
	Life* map[width][height];
	std::string log="a";
	int step;
	int maxsteps;
	int numberConsumer1;
	int numberConsumer2;
	Coordinate getRandomFreePosition();
	
public:
	World(int,int,int);
	void initializeCreature(int,int);
	void print();
	Life getLife(int, int);
	void setLife(int, int, Life);
	bool cell_is_empty(Coordinate);
	void performOneStep();
	void run();	
	
	void timePassed(Creature*,int,int);
 	// int modulo(int, int);
 	bool smell(Creature*, int*, int*);
 	
};

#endif
