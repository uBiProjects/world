
#ifndef UTILS_H_
#define UTILS_H_

#if (defined _WIN32) || (defined _WIN64)
	#define	WINDOWS
#else
	#define	LINUX
#endif

#define MAX(a,b) (((a)<(b))?(a):(b))
#define MIN(a,b) (((a)>(b))?(a):(b))


	struct Coordinate {
		int x;
		int y;
	};

    void sleepd(unsigned);
    bool is_file(const char* );
    void strain(char*);
	int modulo(int, int);
	void wait_for_keypressed();
	void clear_keyboard_buffer();
	void clear_screen();

#endif /* UTILS_H_ */
