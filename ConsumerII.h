#ifndef ConsumerII_H
#define ConsumerII_H

#include "Creature.h"

class ConsumerII : public Creature {


	public:
		ConsumerII(int, int);
		virtual ~ConsumerII();
		static const int maxLifeTime = 15;
		static const int rangeSmellAbgeben = 10;
		static const int rangeSmellRiechen = 5;
		static const int speed = 1;
		static const int maxTimeWithoutFood = 100;

};

#endif
