#ifndef ConsumerII_H
#define ConsumerII_H


class ConsumerII : public Creature {


	public:
		
		ConsumerII(Coordinate);
		virtual ~ConsumerII();
		static const char cell_char = 'C';
};

#endif
