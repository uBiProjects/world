#ifndef ConsumerI_H
#define ConsumerI_H

#include "Creature.h"

class ConsumerI : public Creature {


	public:
		ConsumerI(int, int);
		virtual ~ConsumerI();
		static const int maxLifeTime = 20;
		static const int rangeSmellAbgeben = 7;
		static const int rangeSmellRiechen = 6;
		static const int speed = 2;
		static const int maxTimeWithoutFood = 100;

};

#endif
