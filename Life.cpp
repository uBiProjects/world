#include "Life.h"
#include <iostream>


	Life::Life(int a, int b, int t, int r, int t2){
		x=a;
		y=b;
		currentLifeTime=t;
		maxLifeTime=t2;
		stinkRange=r;
	}
	
	
	Life::~Life(){
	
	}
	
	
	int Life::getX(){
		return x;
	}
	
	int Life::getY(){
		return y;
	}
	
	int Life::getMaxLifeTime(){
		return maxLifeTime;
	}
	int Life::getCurrentLifeTime(){
		return currentLifeTime;
	}
	
	int Life::getStinkRange(){
		return stinkRange;
	}
	
	void Life::setCurrentLifeTime(int a){
		currentLifeTime = a;
	}
	
	bool Life::isWalkable(){
		return walkable;
	}
	
	void Life::setWalkable(bool a){
		walkable = a;
	}
	
	void Life::setX(int a){
		x=a;
	}
	
	void Life::setY(int a){
		y=a;
	}
	
	
	
