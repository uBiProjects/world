#ifndef ConsumerI_H
#define ConsumerI_H


class ConsumerI : public Creature {
	
	
	public:
		
		ConsumerI(Coordinate);
		virtual ~ConsumerI();
		static const char cell_char = 'c';
		static void setSource(char*);
		static char* getSource();
		
	private:

};

#endif
