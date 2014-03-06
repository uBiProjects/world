
#ifndef UTILS_H_
#define UTILS_H_



#define TESTSCORE		// no random init							(comment out for normal run)
// #define DEBUG		// shows debug info							(comment out for normal run)
// #define DEBUG1		// updates the screen afer every crature	(comment out for normal run)
// #define DEBUG2		// print steps								(comment out/include for normal run)
// #define TESTFREE		// calls the testfree routine				(comment out for normal run)
// #define FASTRUN      // wait only 5 millisecons after a step     (comment out for normal run)
#define CLEAR_SCREEN	// clears the scree after each round		(include     for normal run)

// check os system
#if (defined _WIN32) || (defined _WIN64)
	#define	WINDOWS
	#define _CRTDBG_MAP_ALLOC
	#include <crtdbg.h>  // detect memory leaks
	#ifdef _DEBUG   
		#ifndef DBG_NEW      
			#define DBG_NEW new ( _NORMAL_BLOCK , __FILE__ , __LINE__ )      
			#define new DBG_NEW   
		#endif
	#endif  // _DEBUG
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
	void clear_screen();									// clear screen
	void exit_error(int);									// exit routine for all error
	int getRandomNumber(int, int);							// get a random int in a range
	Coordinate addCoordinates(Coordinate, Coordinate);		// add 2 coordinates
	Coordinate subCoordinates(Coordinate, Coordinate);		// sub 2 coordinates
	bool isEqualCoordinates(Coordinate, Coordinate);		// compare if 2 coordinates are equal
	int getggT(int, int);									// compute greates common divisor of 2 ints
	int getkgV(int, int);									// compute least common multiple of 2 ints

#endif /* UTILS_H_ */
