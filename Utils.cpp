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
	#define CLRSCR system("cls")
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
			printf("File size     : %ld\n", Status.st_size);
		//	printf("Drive         : %c:\n", Status.st_dev + 'A');
			Dateityp = Status.st_mode & S_IFMT;
			switch (Dateityp) {
				case S_IFREG:
					puts("is a file");
					return true;
				case S_IFDIR:
					puts("is a folder");
					break;
				default:
					puts("is somting elese");
					break;
			}
		}
		return false;
	}

	


/**
 * calc positive modulo 
 *              _x (mod _y)
 * toReturn: Rückgabewert immer positiv
 * else: Erhöhen bis Wert positiv
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
	// using namespace System;
	// Console::SetCursorPosition(0, 0);
	// std::cout << "\033[0;0H";
	CLRSCR;
}

// exit program and display error message
void exit_error(int error_number) {

	std::string error_msg;
	error_msg = "\nProgram Error : ";
	switch (error_number) {
		case 1: 
			error_msg += "No free cells found in getRandomFreePosition";
			break;
		default: 
			error_msg += "Unknown handled error";
			break;
	}

	std::cout << error_msg;
	wait_for_keypressed();
	exit(error_number);
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
