

#include "Utils.h"


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
