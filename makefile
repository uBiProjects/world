all: World

World: World.o ConsumerI.o ConsumerII.o Creature.o Vegetal.o Life.o
	g++ -o World World.o ConsumerI.o ConsumerII.o Creature.o Vegetal.o Life.o

World.o: World.cpp World.h Life.h Creature.h ConsumerI.h ConsumerII.h Vegetal.h
	g++ -o World.o -c World.cpp -Wall -pedantic

ConsumerI.o: ConsumerI.cpp ConsumerI.h Life.h Creature.h
	g++ -o ConsumerI.o -c ConsumerI.cpp -Wall -pedantic

ConsumerII.o: ConsumerII.cpp ConsumerII.h Life.h Creature.h
	g++ -o ConsumerII.o -c ConsumerII.cpp -Wall -pedantic

Creature.o: Creature.cpp Creature.h Life.h
	g++ -o Creature.o -c Creature.cpp -Wall -pedantic


Vegetal.o: Vegetal.cpp Vegetal.h Life.h
	g++ -o Vegetal.o -c Vegetal.cpp -Wall -pedantic


Life.o: Life.cpp Life.h
	g++ -o Life.o -c Life.cpp -Wall -pedantic

clean:
	rm -f *.o Vegetal.o
