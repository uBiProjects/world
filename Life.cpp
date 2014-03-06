/*
 * Life class.
 */
#include <iostream>

#include "Utils.h"
#include "Life.h"

// Constructor
Life::Life(Coordinate _pos, int curr_lifetime, int emission_range, int max_lifetime, char print_char) {
    pos = _pos;                         //Position
    currentLifeTime = curr_lifetime;    //life time
    maxLifeTime = max_lifetime;         //max life time
    stinkRange = emission_range;        //smell emission
    cell_char = print_char;             //char for printing
}

// Destructor
Life::~Life() {

}

// GETTER:

char Life::getCellChar() {
    return cell_char;
}

Coordinate Life::getPos() {
    return pos;
}

int Life::getX() {
    return pos.x;
}

int Life::getY() {
    return pos.y;
}

int Life::getMaxLifeTime() {
    return maxLifeTime;
}

int Life::getCurrentLifeTime() {
    return currentLifeTime;
}

int Life::getStinkRange() {
    return stinkRange;
}


// SETTER:

void Life::setCellChar(char new_cell_char) {
    cell_char = new_cell_char;
}

void Life::setCurrentLifeTime(int a) {
    currentLifeTime = a;
}

void Life::setWalkable(bool a) {
    walkable = a;
}

void Life::setPos(Coordinate _pos) {
    pos = _pos;
}

void Life::setX(int a) {
    pos.x = a;
}

void Life::setY(int a) {
    pos.y = a;
}


// FUNCTIONS THAT TEST CURRENT STATE OF THE LIFEFORM:
bool Life::isWalkable() {
    return walkable;
}


// OTHER FUNCTIONS:
void Life::incrementLifeTime() {
    currentLifeTime++;
}
