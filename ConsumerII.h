#ifndef ConsumerII_H
#define ConsumerII_H


class ConsumerII : public Creature {


	public:
		
		ConsumerII(Coordinate);
		virtual ~ConsumerII();
	/*	static const int maxLifeTime = 70;
		static const int rangeSmellAbgeben = 4;
		static const int rangeSmellRiechen = 5;
		static const int speed = 1;
		static const int maxTimeWithoutFood = maxLifeTime/3;*/
		static const char cell_char = 'C';
};

#endif
