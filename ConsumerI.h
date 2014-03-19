#ifndef ConsumerI_H
#define ConsumerI_H

#include "Constants.h"

class ConsumerI : public Creature {
	
	
	public:
		
		ConsumerI(Coordinate);
		virtual ~ConsumerI();
		static const char cell_char = C1_CHAR;
		
	private:

};

#endif
