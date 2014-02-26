

#include "Utils.h"
#include <stdio.h>
#include <iostream>

//for getting error number in method is_file
#include <errno.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fstream>
#include <iostream>
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
			printf("Drive         : %c:\n", Status.st_dev + 'A');
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
