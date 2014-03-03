#include "Utils.h"
#include <stdio.h>
#include <iostream>
#include <errno.h>		//for getting error number in method is_file
#include <sys/types.h>
#include <sys/stat.h>
#include <fstream>
#include <string>



#ifdef WINDOWS
	#include <windows.h>
	#include <windows.system.h>
// TODO 1. clr screen immer
//	#define CLRSCR system("cls")
    #define CLRSCR System::Console::SetCursorPosition(0, 0);
	#define FLUSH_KEYBOARD fflush(stdin)
	#define SLEEP  Sleep(milliseconds)
#else
	#include <unistd.h>
	#include <stdlib.h>
	#include <stdio_ext.h>
	#define CLRSCR system("clear")
    #define FLUSH_KEYBOARD __fpurge(stdin)
    #define SLEEP usleep(milliseconds * 1000)
#endif






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
		int Dateityp, result;
		result = stat(path, &Status);
		if (result != 0) {
			perror("Problem getting information");
			switch (errno) {
				case  ENOENT:
					printf("File %s not found.\n", path);
					break;
				case EINVAL:
					printf("Invalid parameter to stat.\n");
					break;
				default: /* Should never be reached*/
					printf("Unexpected error in is_file.\n");
					break;
			}
		}
		else {
			/* out some file info*/
		//	printf("File size     : %ld\n", Status.st_size);
		//	printf("Drive         : %c:\n", Status.st_dev + 'A');
			Dateityp = Status.st_mode & S_IFMT;
			switch (Dateityp) {
				case S_IFREG:
#ifdef DEBUG
					puts("is a file");
#endif
					return true;
				case S_IFDIR:
#ifdef DEBUG
					puts("is a folder");
#endif
					break;
				default:
#ifdef DEBUG
					puts("is somting elese");
#endif
					break;
			}
		}
		return false;
	}

	


/**
 * calc positive modulo 
 *              _x (mod _y)
 * toReturn: R�ckgabewert immer positiv
 * else: Erh�hen bis Wert positiv
**/
int modulo(int _x, int _y){

	int toReturn = (_x % _y);
	if (toReturn < 0) {
		toReturn += _y;		// -a = x mod y => a = -a + y
	}
	return toReturn;
}


// clear keybuffer (discard all pressed keys)
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
		default:
			error_msg += "Unknown handled error";
			break;
	}

	std::cout << error_msg;
	wait_for_keypressed();
	exit(error_number);
}

// returns the signum of x
// or 0 if x = 0
int sign(int x) {
	// x > 0 => (x>0) = 1 und (x<0)=0 =>1
	// x = 0 => (x>0) = 0 und (x<0)=0 =>0
	// x <0  => (x>0) = 0 und (x<0)=1 =>-1
	return (x > 0) - (x < 0);
}

// 
void strain(char *argv)
{
	std::fstream f;
	char cstring[256];
	f.open(argv, std::ios::in);
	while (!f.eof())
	{
		f.getline(cstring, sizeof(cstring));
		std::cout << cstring << std::endl;
	}
	f.close();
}


// get a random number in intervall [range_min, range_max]
int getRandomNumber(int range_min,int range_max) {
	double u = (double)rand() / (RAND_MAX + 1.0) * (range_max + 1.0 - range_min) + range_min;
    return (int) u;

}
