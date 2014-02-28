#include "Life.h"
#include <iostream>


	Life::Life(int x_position, int y_position, int curr_lifetime, int emission_range, int max_lifetime, char print_char){
		x=  x_position;
		y = y_position;
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
	
	
	
