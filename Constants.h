#ifndef Constants_H
#define Constants_H


// check os system
#if (defined _WIN32) || (defined _WIN64)
	#define	WINDOWS
#else
	#define	LINUX
#endif


// debugging
#define TESTSCORE		// no random init							(comment out for normal run)
// #define DEBUG		// shows debug info							(comment out for normal run)
// #define DEBUG1		// updates the screen afer every creature	(comment out for normal run)
// #define DEBUG2		// print steps								(comment out/include for normal run)
// #define TESTFREE		// calls the testfree routine				(comment out for normal run)
#define CLEAR_SCREEN	// clears the scree after each round		(include     for normal run)
#define FASTRUN			// no sleep after after a step				(comment out/include for normal run)
// #define SUPERFAST		// no sleep and do not show map             (comment out/include for normal run)

#define WAIT_MS			500		// milisec to wait if FASTRUN is not defined


// only activate one of the following lines
#define CELLSIZE 1		// 1 life form every 2. print position and no space lines
// #define CELLSIZE 2		// 1 life form every 3. print position and one space lines
// #define CELLSIZE 3		// 1 life form every 4. print position and one space lines



// simulation definition
#define C1_P_DIV		5		// to determin the max pregnant time, lieftime is deviced by this value
#define C2_P_DIV		3		// to determin the max pregnant time, lieftime is deviced by this value

#define TWF_NEW			0       // normal time without food for Creatures
#define HUNGRY_MUL      2		// a crature returns hungry if TWF*HUNGRY_MUL > MTWF
								// 2 means => TWF/MTWF > 1/2
#define PREDATOR_MUL    4.0		// factor to boost the sell emission of an perdator over same type

#define HUNGRY_PERCENT  0.75    // above this % a creature is very hungry
#define FOOD_MUL        2.0     // factor to boost a cell with food if a creature is very hungry => eat,eat,eat

#define GORGED_PERCENT  0.25    // below this % a creature is not hungry and should walk
#define WALK_MUL        2.0     // factor to boost an empty cell if a creature is not hungry	 => explore the map
#define NOT_HUNGRY_MUL  0.0     // factor to reduce hunger if creature has just eaten

// if a child is born the food of the mother is divided between the two.
#define CHILD_FOOD      2		// (MTWF+TWF)/CHILD_FOOD of the mothers food is transferd to the child, if it is born alive
								

// speed pregnat = SPEED_MUL_P * speednormal / SPEED_DIV_P
#define SPEED_MUL_P		3		// multiplicator for speed if crature is pregnant	
#define SPEED_DIV_P		4		// divisor for speed if crature is pregnant
// to become pregnant creature must be older than maxLifeTime / AGE_DIV_P)
#define AGE_DIV_P		4		




// OUTPUT Controll
#define C1_CHAR			'c'		// char for Consumer1 
#define C1_CHAR_P		'p'		// char for Consumer1 if pregnant
#define C2_CHAR			'X'		// char for Consumer2 
#define C2_CHAR_P		'H'		// char for Consumer2 if pregnant
#define VE_CHAR			'v'		// char for Vegetal
#define C1_STR			"c"		// char for Consumer1 
#define C1_STR_P		"p"		// char for Consumer1 if pregnant
#define C2_STR			"X"		// char for Consumer2 
#define C2_STR_P		"H"		// char for Consumer2 if pregnant
#define VE_STR			"v"		// char for Vegetal

#define XSTR(arg)		STR_VALUE(arg)
#define STR_VALUE(arg)	#arg

#ifdef WINDOWS
	
	#define C1_PRINT_P	C1_CHAR_P;
	#define C1_PRINT_N	C1_CHAR;
	#define C2_PRINT_P 	C2_CHAR_P;
	#define C2_PRINT_N	C2_CHAR;
	#define VE_PRINT	VE_CHAR;
#else
	#define ESC_BLUE  "\033[1;34m"
	#define ESC_RED	  "\033[1;31m"
	#define ESC_GREEN "\033[1;32m"
	#define ESC_RESET "\033[0m"

#define C1_PRINT_P  ESC_BLUE  C1_STR_P ESC_RESET
#define C1_PRINT_N  ESC_BLUE  C1_STR   ESC_RESET
#define C2_PRINT_P  ESC_RED   C2_STR_P ESC_RESET
#define C2_PRINT_N  ESC_RED   C2_STR   ESC_RESET
#define VE_PRINT	ESC_GREEN VE_STR   ESC_RESET
#endif

#endif