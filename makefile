all: World

World: World.o ConsumerI.o ConsumerII.o Creature.o Vegetal.o Life.o Utils.o MapItem.o Map.o Values.o
	g++ -o World World.o ConsumerI.o ConsumerII.o Creature.o Vegetal.o Life.o Utils.o MapItem.o Map.o Values.o

World.o: World.cpp World.h Life.h Creature.h ConsumerI.h ConsumerII.h Vegetal.h Utils.h MapItem.h Map.h Values.h
	g++ -o World.o -c World.cpp -Wall -pedantic

Map.o: Map.cpp World.h Life.h Creature.h ConsumerI.h ConsumerII.h Vegetal.h Utils.h MapItem.h Map.h
	g++ -o Map.o -c Map.cpp -Wall -pedantic
	
MapItem.o: MapItem.cpp MapItem.h Life.h
	g++ -o MapItem.o -c MapItem.cpp -Wall -pedantic

ConsumerI.o: ConsumerI.cpp ConsumerI.h Life.h Creature.h Utils.h Values.h
	g++ -o ConsumerI.o -c ConsumerI.cpp -Wall -pedantic

ConsumerII.o: ConsumerII.cpp ConsumerII.h Life.h Creature.h Utils.h Values.h
	g++ -o ConsumerII.o -c ConsumerII.cpp -Wall -pedantic

Creature.o: Creature.cpp Creature.h Life.h Utils.h ConsumerI.h ConsumerII.h Vegetal.h Values.h
	g++ -o Creature.o -c Creature.cpp -Wall -pedantic

Vegetal.o: Vegetal.cpp Vegetal.h Life.h Utils.h Values.h
	g++ -o Vegetal.o -c Vegetal.cpp -Wall -pedantic

Life.o: Life.cpp Life.h Utils.h
	g++ -o Life.o -c Life.cpp -Wall -pedantic

Utils.o: Utils.cpp Utils.h
	g++ -o Utils.o -c Utils.cpp -Wall -pedantic

clean:
	rm -f *.o

