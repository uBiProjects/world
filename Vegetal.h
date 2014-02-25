#ifndef VEGETAL_H
#define VEGETAL_H

#include "Life.h"

class Vegetal : public Life {


	public:
		static const int maxLifeTime = 100;
		static const int rangeSmellAbgeben = 10;
		static const int rangeSmellRiechen = 6;
		static const int speed = 2;
		static const int maxTimeWithoutFood = 100;

	public:
		Vegetal(int,int);
		virtual ~Vegetal();
		


};
#endif
