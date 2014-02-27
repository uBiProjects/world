#include "Utils.h"
#include <stdio.h>
#include <iostream>

//for getting error number in method is_file
#include <errno.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fstream>
#include <string>


#ifdef _WIN32

    #include <windows.h>
    void sleepd(unsigned milliseconds) {
        Sleep(milliseconds);
    }
#else

    #include <unistd.h>
    void sleepd(unsigned milliseconds) {
        usleep(milliseconds * 1000);
    }
#endif

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

	/*

	FILE *file = fopen(path, "r");

	std::cout << path;
	if (file == NULL) {

		// file does not exist
		if(errno == ENOENT){
			std::cout << " file does not exist\n";
		} else {
			std:: cout << " keine ahnung.\n";
		}

		return false;
	}



	fclose(file);
	std::cout << " es ist wahr!\n";
	return true;*/


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

	int toReturn;

	if (_x >= 0) {
		toReturn = (_x % _y);
	}
	else {
		toReturn = (_x % _y) + _y;
		// toReturn = modulo(_y + _x, _y);
	}
	return toReturn;
}