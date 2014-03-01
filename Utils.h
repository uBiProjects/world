
#ifndef UTILS_H_
#define UTILS_H_

// #define DEBUG
// #define DEBUG1
#define CLEAR_SCREEN

#if (defined _WIN32) || (defined _WIN64)
	#define	WINDOWS
#else
	#define	LINUX
#endif

#define MAX(a,b) (((a)<(b))?(a):(b))
#define MIN(a,b) (((a)>(b))?(a):(b))


	struct Coordinate {
		Coordinate(int _x, int _y){ x = _x; y = _y; }
		Coordinate() :x(-1), y(-1){}		//** int empty cur-pos
		int x;
		int y;
		operator bool() const { return x >= 0 && y >= 0; }
	};

    void sleepd(unsigned);
    bool is_file(const char* );
    void strain(char*);
	int modulo(int, int);
	void wait_for_keypressed();
	void clear_keyboard_buffer();
	void clear_screen();
	void exit_error(int);
	int getRandomNumber(int, int);


#endif /* UTILS_H_ */
