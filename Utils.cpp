#include "Utils.h"
#include <stdio.h>
#include <iostream>
#include <errno.h>		//for getting error number in method is_file
#include <sys/types.h>
#include <sys/stat.h>
#include <fstream>
#include <string>


#ifdef WINDOWS
	#define CLRSCR "cls"
	#include <windows.h>
#else
	#define CLRSCR "clear"
	#include <unistd.h>
#endif






	// sleep for milliseconds
	void sleepd(unsigned milliseconds) {
#ifdef WINDOWS
        Sleep(milliseconds);
#else
        usleep(milliseconds * 1000);
#endif
	}


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

#ifdef WINDOWS
	fflush(stdin);
#else
	__fpurge(stdin);
#endif

}

// wait for enter
void wait_for_keypressed() {
	printf("\nPress Enter to continue...");
	clear_keyboard_buffer();
	getchar();
}

// clears the screen
void clear_screen() {
	system(CLRSCR);
}

// get position of curor
Coordinate getCursorPos() {
	Coordinate pos;
	CONSOLE_SCREEN_BUFFER_INFO conbi;
	HANDLE hconsole;
	hconsole = GetStdHandle(STD_OUTPUT_HANDLE);
	if (hconsole != INVALID_HANDLE_VALUE && GetConsoleScreenBufferInfo(hconsole, &conbi)){
		pos.x = conbi.dwCursorPosition.X;
		pos.y = conbi.dwCursorPosition.Y;
	}
	return pos;
}