#ifndef WORDLR_H
#define WORDLR_H



class Worldrun {

private:
	static const int width = 10, height = 10;
	Life* map[width][height];
	std::string log;
	int step;
public:
	World();
	void initializeCreature();
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