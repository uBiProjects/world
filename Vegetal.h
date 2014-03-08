#ifndef VEGETAL_H
#define VEGETAL_H

#include "Constants.h"

class Vegetal : public Life {

	public:
		static const char cell_char = VE_CHAR;
	public:
		Vegetal(Coordinate);
		virtual ~Vegetal();
		
};
#endif
