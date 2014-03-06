#ifndef WORDL_H
#define WORDL_H

#include "Utils.h"
#include "Life.h"
#include "Creature.h"
#include "Vegetal.h"

class World {

private:

	Map* mp;

	// int step;
	int maxsteps;
	// int numberConsumer1;
	// int numberConsumer2;
	int wwidth, wheight;
	Coordinate getRandomFreePosition();
	
public:
	World(int, int, int, int, int, int);
	virtual ~World();
	bool initializeCreature(int, int, int);

	void print();
	void performOneStep(int);
	void run(int);	
	int testfree();

	void timePassed(Creature*);
	void timePassed(Vegetal*);
 	// int modulo(int, int);
	bool smellAndGetBestDestination(Creature*, Coordinate*);
	bool creatureMustDie(Creature*);
	bool cell_is_empty(Coordinate);
	bool isAConsumerI(Coordinate);
 	bool isAConsumerI(Life*);
	bool isAConsumerII(Coordinate);
 	bool isAConsumerII(Life*);
	bool isAVegetal(Coordinate);
	bool isACreature(Coordinate);
	bool createNewVegetal(Coordinate);
	bool createNewConsumerI(Coordinate, int);
	bool createNewConsumerII(Coordinate, int);
	void setAllConsumersWalkableAndInteractable();
	Coordinate normCoordinateToWorld(Coordinate);
	Coordinate getAFreePositionAroundme(Coordinate);
	void impregnate(Creature*, Creature*);
	void giveBirthToABaby(Creature*);
	int interact(Creature*, Coordinate);
	double computeScore(double, double, double, double, double, bool, bool);
	bool findMatingPartner(Creature*, Coordinate*);
	bool findFood(Creature*, Coordinate*);
	bool cellIsFood(Creature*, Coordinate);
};

#endif
