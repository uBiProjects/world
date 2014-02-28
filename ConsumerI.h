#ifndef ConsumerI_H
#define ConsumerI_H


class ConsumerI : public Creature {


	public:
		ConsumerI(int, int);
		virtual ~ConsumerI();
		static const int maxLifeTime = 30;
		static const int rangeSmellAbgeben = 7;
		static const int rangeSmellRiechen = 6;
		static const int speed = 2;
		static const int maxTimeWithoutFood = maxLifeTime/2;
		static const char cell_char = 'c';

};

#endif
