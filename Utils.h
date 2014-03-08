
#ifndef UTILS_H_
#define UTILS_H_

#include <string>
#include "Constants.h"


// detect memory leaks for windows
#if defined WINDOWS
	#define _CRTDBG_MAP_ALLOC
	#include <crtdbg.h>  // detect memory leaks
	#ifdef _DEBUG   
		#ifndef DBG_NEW      
			#define DBG_NEW new ( _NORMAL_BLOCK , __FILE__ , __LINE__ )      
			#define new DBG_NEW   
		#endif
	#endif  
#else
	#define	LINUX
#endif


// a min/max template
#define MAX(a,b) (((a)>(b))?(a):(b))
#define MIN(a,b) (((a)<(b))?(a):(b))


	
// the coordinates of one cell on the map
	struct Coordinate {
		Coordinate(int _x, int _y){ x = _x; y = _y; }
		Coordinate() :x(-1), y(-1){}		//** int empty cur-pos
		int x;
		int y;
		operator bool() const { return x >= 0 && y >= 0; }
	};

	int length(unsigned int);
	int sign(int);											// signum
	void sleepd(unsigned);									// slepp routine
    bool is_file(const char* );								// test if it is a file
	int modulo(int, int);									// special modulo 
	void wait_for_keypressed();								// wait for enter
	void clear_keyboard_buffer();							// fush keybord buffer
	void clear_screen(bool);								// clear screen
	void exit_error(int);									// exit routine for all error
	int getRandomNumber(int, int);							// get a random int in a range
	Coordinate addCoordinates(Coordinate, Coordinate);		// add 2 coordinates
	Coordinate subCoordinates(Coordinate, Coordinate);		// sub 2 coordinates
	bool isEqualCoordinates(Coordinate, Coordinate);		// compare if 2 coordinates are equal
	int getggT(int, int);									// compute greates common divisor of 2 ints
	int getkgV(int, int);									// compute least common multiple of 2 ints
	std::string convertInt(int _number, int _size);			// convert an integer to a string of a given size
#endif /* UTILS_H_ */
