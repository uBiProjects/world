
#include <iostream>

#include "Utils.h"
#include "Life.h"
	

	Life::Life(Coordinate _pos, int curr_lifetime, int emission_range, int max_lifetime, char print_char){
		pos = _pos;
		currentLifeTime = curr_lifetime;
		maxLifeTime = max_lifetime;
		stinkRange = emission_range;
		cell_char = print_char;
	}
	
	
	Life::~Life(){

	}
	
	char Life::getCellChar(){
		return cell_char;
	}

	void Life::setCellChar(char new_cell_char){
		cell_char = new_cell_char;
	}

	Coordinate Life::getPos(){
		return pos;
	}

	int Life::getX(){
		return pos.x;
	}
	
	int Life::getY(){
		return pos.y;
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
	
	void Life::setPos(Coordinate _pos){
		pos = _pos;
	}

	void Life::setX(int a){
		pos.x=a;
	}
	
	void Life::setY(int a){
		pos.y=a;
	}
	void Life::incrementLifeTime(){
		currentLifeTime++;
	}
