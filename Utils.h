
#ifndef UTILS_H_
#define UTILS_H_

/*
* Utils.h
*
*  Created on: 25.02.2014
*      Author: juli
*/

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
