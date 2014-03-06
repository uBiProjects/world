
#include <stdio.h>
#include <iostream>
#include <errno.h>		//for getting error number in method is_file
#include <sys/types.h>
#include <sys/stat.h>
#include <fstream>
#include <string>

// program includes
#include "Utils.h"




#ifdef WINDOWS                                                  // Windows
	#include <windows.h>
	#include <windows.system.h>
//	#define CLRSCR system("cls")
    #define CLRSCR System::Console::SetCursorPosition(0, 0);			
	#define FLUSH_KEYBOARD fflush(stdin)
	#define SLEEP  Sleep(milliseconds)
#else															// Linux
	#include <unistd.h>
	#include <stdlib.h>
	#include <stdio_ext.h>
	#define CLRSCR system("clear")
    #define FLUSH_KEYBOARD __fpurge(stdin)
    #define SLEEP usleep(milliseconds * 1000)
#endif


/**
 * returns length of number up to 4.
 * @param _number the number
 * @return the length of the number
 */
int length(unsigned int _number) {
	if(_number >= 1000){
		return 4;
	}
	else if (_number >= 100){
		return 3;
	}
	else if (_number >= 10){
		return 2;
	}
	else {
		return 1;
	}
}


	// sleep for milliseconds
	void sleepd(unsigned milliseconds) {
        SLEEP;
	}


	/*
	* Checks whether entered file is valid.
	* If there is a problem, it tells the user what's wrong.
	* Otherwise, some information about the file is displayed.
	*/
	bool is_file(const char* path) {

		struct stat Status;
		int result;
		result = stat(path, &Status);
		if (result != 0) {
			perror("Problem getting information");
			switch (errno) {
				case  ENOENT:
					printf("File %s not found.\n", path);
					break;
				case EINVAL:
					printf("Invalid parameter to stat:%s\n", path);
					break;
				default: /* Should never be reached*/
					printf("Unexpected error in is_file.\n");
					break;
			}
		} else {
			int Dateityp;
			//	printf("File size     : %ld\n", Status.st_size);
			//	printf("Drive         : %c:\n", Status.st_dev + 'A');
			Dateityp = Status.st_mode & S_IFMT;
			switch (Dateityp) {
				case S_IFREG:
					// puts("is a file");
					return true;
				case S_IFDIR:
					puts("is a folder");
					break;
				default:
					puts("is somting else");
					break;
			}
		}
		return false;
	}

	


/**
 * calculate a positive modulo 
 *              _x (mod _y)
 */
	int modulo(int _x, int _y){

		int toReturn = (_x % _y);
		if (toReturn < 0) {
			toReturn += _y;		
		}
		return toReturn;
	}



// clear keyboard buffer (discard all pressed keys)
	void clear_keyboard_buffer() {
		FLUSH_KEYBOARD;
	}


// wait for enter
	void wait_for_keypressed() {
		printf("\nPress Enter to continue...");
		clear_keyboard_buffer();
		getchar();
	}

// clears the screen
	void clear_screen() {
		CLRSCR;
	}


// returns the signum of x
// or 0 if x = 0
	int sign(int x) {
		// x > 0 => (x>0) = 1 and (x<0)=0 =>1
		// x = 0 => (x>0) = 0 and (x<0)=0 =>0
		// x <0  => (x>0) = 0 and (x<0)=1 =>-1

		return (x > 0) - (x < 0);
	}


// add 2 vectors
	Coordinate addCoordinates(Coordinate _c1, Coordinate _c2) {

		return Coordinate((_c1.x + _c2.x), (_c1.y + _c2.y));

	}


// sub 2 vectors return _c1-_c2
	Coordinate subCoordinates(Coordinate _c1, Coordinate _c2) {

		return Coordinate((_c1.x - _c2.x), (_c1.y - _c2.y));

	}


	// get a random number in interval [range_min, range_max]
	int getRandomNumber(int range_min, int range_max) {
		double u,y;
		y = RAND_MAX;
		u = rand();
		u = u / (y + 1.0) *
			(double)(range_max + 1.0 - range_min) + (double)range_min;
		return (int)u;
}


// exit program and display error message
	void exit_error(int error_number) {

		std::string error_msg;
	
		switch (error_number) {
			case 1: 
				error_msg = "\nProgram Error : ";
				error_msg += "No free cells found in getRandomFreePosition\n\n";
				break;
			case 2:
				error_msg = "\nProgram Error : ";
				error_msg += "Too many vegetals for this world\n\n";
				break;
			case 3:
				error_msg = "\nProgram Error : ";
				error_msg += "Too many consumerI for this world\n\n";
				break;
			case 4:
				error_msg = "\nProgram Error : ";
				error_msg += "Too many consumerII for this world\n\n";
				break;
			case 5:
				error_msg = "\nProgram Error : ";
				error_msg += "in Creature: interact call of routine with invalid creature\n\n";
				break;
			case 6:
				error_msg = "\nProgram Error : ";
				error_msg += "in performOneStep: Bad index in switch case\n\n";
				break;
			case 7:
				error_msg = "Wrong number of arguments!\n\n";
				error_msg += "Recall World with 8 parameters like \n";
				error_msg += "World [int] [int] [int] [int] [int] [char*] [char*] [char*]\n\n";
				error_msg += "1st Param	[height]\n";
				error_msg += "2nd param	[width]\n";
				error_msg += "3rd param	[maxNumberOfStepsInSimulation]\n";
				error_msg += "4th param	[NumberOfC1AtTheBeginning]\n";
				error_msg += "5th param	[NumberOfC2AtTheBeginning]\n";
				error_msg += "6th param	[pathToVegetal.txt]\n";
				error_msg += "7th param	[pathToConsumerI]\n";
				error_msg += "8th param	[consumer2]\n\n";
				break;
			case 8:
				error_msg = "Bad value of one or more arguments!\n\n";
				break;
			case 9:
				error_msg = "One or more of the input files do not exist!\n\n";
				break;
			case 10:
				error_msg += "in interact: can not interact with me myself I!\n\n";
				break;
			case 11:
				error_msg += "Map::updateEmission Error. ISA relationship is not complete.\n\n";
				break;
			case 12:
				error_msg += "No instance of Values.. .\n\n";
				break;
			case 13:
				error_msg += "Something is wrong with your Vegetal.txt file.\n\n";
				break;
			case 14:
				error_msg += "Something is wrong with your Consumer1.txt file.\n\n";
				break;
			case 15:
				error_msg += "Something is wrong with your Consumer2.txt file.\n\n";
				break;
			default:
				error_msg += "Unknown handled error";
				break;
		}

		std::cout << error_msg;
		wait_for_keypressed();
		exit(error_number);
	}

	// compute greatest common divisor of a and b
	int getggT(int a, int b) {
		if (a < 0) a = -a;
		if (b < 0) b = -b;
		for (;;){
			if (a == 0) return b;		// trap if a==0
			b %= a;						// b = b mod a
			if (b == 0) return a;		// trap if b==0
			a %= b;						// a = a mod b
		}
	}

    
	// compute least common multiple of a and b use => abs(a*b)=kgV*ggT
	int getkgV(int a, int b) {
		int c = abs(a * b);
		if (c == 0) return 0;			// kgv = 0 if one of the two is 0
		int g = getggT(a, b);			// compute ggt
		return c / g;
	}
