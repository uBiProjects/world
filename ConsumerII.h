#ifndef ConsumerII_H
#define ConsumerII_H

#include "Constants.h"

class ConsumerII : public Creature {


	public:
		
		ConsumerII(Coordinate);
		virtual ~ConsumerII();
		static const char cell_char = C2_CHAR;
};

#endif
