#ifndef VEGETAL_H
#define VEGETAL_H

class Vegetal : public Life {


	public:
		static const int maxLifeTime = 100;
		static const int rangeSmellAbgeben = 10;
		// static const int rangeSmellRiechen = 6;
		// static const int speed = 2;
		// static const int maxTimeWithoutFood = 100;
		static const char cell_char = 'v';
	public:
		Vegetal(int,int);
		virtual ~Vegetal();
		


};
#endif
