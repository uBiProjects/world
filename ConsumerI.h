#ifndef ConsumerI_H
#define ConsumerI_H


class ConsumerI : public Creature {
	
	
	public:
		
		ConsumerI(Coordinate);
		virtual ~ConsumerI();
		static const int maxLifeTime = 30;
		static const int rangeSmellAbgeben = 4;
		static const int rangeSmellRiechen = 3;
		static const int speed = 2;
		static const int maxTimeWithoutFood = maxLifeTime/3;
		static const char cell_char = 'c';

};

#endif
