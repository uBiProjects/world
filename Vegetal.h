#ifndef VEGETAL_H
#define VEGETAL_H

class Vegetal : public Life {


	public:
		static const int maxLifeTime = 100;
		static const int rangeSmellAbgeben = 10;
		static const char cell_char = 'v';
	public:
		Vegetal(Coordinate);
		virtual ~Vegetal();

};
#endif
