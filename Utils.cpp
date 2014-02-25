

#include "Utils.h"
#include <stdio.h>
#include <iostream>

//for getting error number in method is_file
#include <errno.h>
#include <sys/types.h>
#include <sys/stat.h>

#include <fstream>

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
	   int Dateityp;
	   stat(path, &Status);
	   Dateityp = Status.st_mode & S_IFMT;
	   switch (Dateityp) {
	     case S_IFREG:
	    	 puts("Datei");
	    	 return false;
	     case S_IFLNK:
	    	 puts("Symbolischer Link");
	    	 return false;
	     case S_IFDIR:
	    	 puts("Verzeichnis");
	    	 return false;
	     default:
	    	 puts("Sonstiges");


	    	 return true;
	   }





	   return true;

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
}


