#ifndef MAP_H
#define MAP_H


class Map {

	public :

		//constructor and destructor
		Map(int,int);
		virtual ~Map();

		//remove monster from space. update smell. called before smelling so.
		void removeMonster(int, int);

		//insert monster at int int. update smell.
		void insertMonster(Life*, int, int);

		//caa removeMonster and free monster.
		void deleteMonster(int, int);

		//getter methods for width, height and special mapItem.
		int getWidth();
		int getHeight();
		
		MapItem* getMapItem(int, int);


		int getAmountFreePosition();
		void print(bool);

	private :
		int width, height;
		int amountFreePosition;
		MapItem*** cell;
		void updateEmission(Life, int, int, int);
		void test();

};


#endif

