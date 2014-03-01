#ifndef VEGETAL_H
#define VEGETAL_H

class Vegetal : public Life {


	public:
		static const int maxLifeTime = 50;
		static const int rangeSmellAbgeben = 5;
		static const char cell_char = 'v';
	public:
		Vegetal(Coordinate);
		virtual ~Vegetal();

};
#endif
