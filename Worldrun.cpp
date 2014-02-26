#include "Worldrun.h"




/**
 * method run. Inside this method
 */
void World :: run(){

	//inside this loop each step is gone
	for(step= 0; step < 900; step ++){


		//
		std:: cout << "hi\n";
		performOneStep();
		std:: cout << "hi\n";

		//every X rounds a new plant grows in a random place 
		if(step % 1 == 0){

			int a = 0;
			int b = width;
			int x =  a + ( modulo(rand(), ( b - a + 1 )));
			b = height;
			int y =  a + ( modulo(rand(), ( b - a + 1 )));

			//if the map is empty, a new plant is able to grow
			//at the generated position
			if(map[x][y] ==  NULL){
				map[x][y] = new Vegetal(x,y);
			}
		}
	}
}

