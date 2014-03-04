#ifndef VEGETAL_H
#define VEGETAL_H

class Vegetal : public Life {


	public:
		static const char cell_char = 'v';
	public:
		Vegetal(Coordinate);
		virtual ~Vegetal();
		
};
#endif
