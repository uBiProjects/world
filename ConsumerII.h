#ifndef ConsumerII_H
#define ConsumerII_H


class ConsumerII : public Creature {


	public:
		ConsumerII(int, int);
		virtual ~ConsumerII();
		static const int maxLifeTime = 100;
		static const int rangeSmellAbgeben = 10;
		static const int rangeSmellRiechen = 5;
		static const int speed = 1;
		static const int maxTimeWithoutFood = maxLifeTime/2;
		static const char cell_char = 'C';
};

#endif
