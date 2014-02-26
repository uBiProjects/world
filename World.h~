#ifndef WORDL_H
#define WORDL_H


#include "Life.h"
#include "Creature.h"

class World {

private:
	static const int width = 10, height = 10;
	Life* map[width][height];
	std::string log;
	int step;
	int maxsteps;
	int numberConsumer1;
	int numberConsumer2;
	
public:
	World(int,int,int);
	void initializeCreature(int,int);
	void print();
	Life getLife(int, int);
	void setLife(int, int, Life);
	void performOneStep();
	void run();	
	
	void timePassed(Creature*,int,int);
 	int modulo(int, int);
 	bool smell(Creature*, int*, int*);
 	int maximum(int, int);
};

#endif
