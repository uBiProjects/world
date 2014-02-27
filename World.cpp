#include <iostream>
#include "World.h"
#include "Creature.h"
#include "ConsumerI.h"
#include "ConsumerII.h"
#include "Vegetal.h"
#include "stdlib.h"
#include <string>
#include "Utils.h"
#include <time.h>
#include <cstddef>

//for checking whether file does not exist (in method main).
#include <fstream>

/*
 * Constructor
 */
World::World(int nC1, int nC2, int mstep) {

	//save maximal amount of steps
    maxsteps = mstep;

    //tell random to generate random numbers
    srand((unsigned) time(NULL));

    //initialize creatures
    initializeCreature(nC1, nC2);

    //start life of creatures.
    run();

    //print the log file.
    std::cout << log;
}

/**
 * initialize the creatures.
 */
void World::initializeCreature(int nC1, int nC2) {


    //initialize pointer array with value 0
    for (int w = 0; w < width; w++) {
        for (int h = 0; h < height; h++) {
            map[w][h] = 0;
        }
    }

    //create vegetal
    map[0][4] = new Vegetal(0, 4);
    map[0][5] = new Vegetal(0, 5);
    map[3][5] = new Vegetal(3, 5);
    map[5][5] = new Vegetal(5, 5);
    map[1][2] = new Vegetal(1, 2);
    map[2][2] = new Vegetal(2, 2);
    map[3][2] = new Vegetal(3, 2);

    /*
     * Create consumer 1
     * NEU:
     * Suche x. freies Feld, statt
     * zufällige Koordinaten.
     * Random: Zufallswert
     * z: Zähler (Beim wievielten freien
     * Feld sind wir?)
     * besetzt: zählt besetzte Felder
     */
    for (int i = 0; i < nC1; i++) {
        int worldsize = width*height;
        int random = (modulo(rand(), (worldsize)));
        int z = 0;
        int besetzt = 0;
        for (int j = 0; j < random; j++) {
            for (int k = 0; k < height; k++) {
                if (map[j][k] == 0) {
                    z++;
                    if (z == random) {
                        map[j][k] = new ConsumerI(j, k);
                        j = width;
                        k = height;
                    }
                } else besetzt++;
            }
            if (j == width - 1) {
                j = 0;
                besetzt = 0;
            }
            if (besetzt == width * height) {
                z = random;
            }
        }
    }
    //Baut ConsumerII:
    for (int i = 0; i < nC2; i++) {
        int worldsize = width*height;
        int random = (modulo(rand(), (worldsize)));
        int z = 0;
        int besetzt = 0;
        for (int j = 0; z <= random; j++) {
            for (int k = 0; k < height; k++) {
                if (map[j][k] == 0) {
                    z++;
                    if (z == random) {
                        map[j][k] = new ConsumerII(j, k);
                        j = width;
                        k = height;
                    }
                } else besetzt++;
            }
            if (j == width - 1) {
                j = 0;
                besetzt = 0;
            }
            if (besetzt == width * height) {
                z = random;
            }
        }
    }
    print();
}

/**
 * method run. Inside this method
 */
void World::run() {

    //inside this loop each step is gone
    for (step = 0; step < maxsteps; step++) {


        //
        //std:: cout << "hi\n";
        performOneStep();
        //std:: cout << "hi\n";

        //every X rounds a new plant grows in a random place 
        if (step % 1 == 0) {

            int a = 0;
            int b = width;
            int x = a + (modulo(rand(), (b - a + 1)));
            b = height;
            int y = a + (modulo(rand(), (b - a + 1)));

            //if the map is empty, a new plant is able to grow
            //at the generated position
            if (map[x][y] == NULL) {
                map[x][y] = new Vegetal(x, y);
            }
        }
    }
}

void World::performOneStep() {

    //kgv berechenen, aktuelles level modulo kgv rechnen		
    int kgv = 2;
    for (int noch = 0; noch < kgv; noch++) {

        std::cout << "step" << step << "." << noch % 2 << "\n";

        //set everything walkable
        for (int i = 0; i < width; i++) {
            for (int j = 0; j < height; j++) {
                if (map[i][j] != 0) {
                    if (dynamic_cast<ConsumerI*> (map[i][j])
                            || dynamic_cast<ConsumerII*> (map[i][j])) {
                        (*map[i][j]).setWalkable(true);
                    }
                }
            }
        }


        for (int i = 0; i < width; i++) {
            for (int j = 0; j < height; j++) {
                if ((dynamic_cast<ConsumerI*> (map[i][j])
                        || (dynamic_cast<ConsumerII*> (map[i][j]) && noch % 2 == 0))
                        && (*map[i][j]).isWalkable()) {

                    //save current Life as Creature
                    Creature* d = (Creature*) (map[i][j]);



                    /*
                     * calculate position and save creature
                     */
                    int posX = i, posY = j;
                    int plusX = i, plusY = j;


                    //if Creature smells another creature
                    if (smell(d, &plusX, &plusY)) {

                        if (plusX < 0) {
                            plusX = -1;
                        } else if (plusX > 0) {
                            plusX = 1;
                        }

                        if (plusY < 0) {
                            plusY = -1;
                        } else if (plusY > 0) {
                            plusY = 1;
                        }

                        posX = modulo(i + plusX, width);
                        posY = modulo(j + plusY, height);

                    } else {

                        //else
                        plusX = -1 + (modulo(rand(), 3));
                        plusY = -1 + (modulo(rand(), 3));

                        posX = modulo(i + plusX, width);
                        posY = modulo(j + plusY, height);

                    }


                    int index = (*d).interact(d, map[posX][posY]);

                    //not moving
                    if (plusX == plusY && plusY == 0) {
                        if (noch % 2 == 0) {
                            timePassed(d, i, j);
                        }
                    }
                        //not reproducing
                    else if (index == 1) {

                        (*d).changePosition(plusX, plusY);
                        map[i][j] = NULL;
                        map[posX][posY] = d;
                        (*map[posX][posY]).setWalkable(false);

                        if (noch % 2 == 0) {
                        }
                        (*d).setTimeWithoutFood(0);
                    } else if (map[posX][posY] == NULL) {

                        (*d).changePosition(plusX, plusY);
                        map[i][j] = NULL;
                        map[posX][posY] = d;
                        (*map[posX][posY]).setWalkable(false);

                        if (noch % 2 == 0) {
                        }
                    }                        //no interaction
                    else if (index == -1) {

                        if (noch % 2 == 0) {
                        }
                        //j --;
                    }                        //reproduce
                    else if (index == 0) {

                        if (noch % 2 == 0) {
                        }
                        Creature a = *((Creature*) (map[posX][posY]));
                        Creature b = *((Creature*) (d));


                        std::cout << "zeit1" << a.getPregnantTime() << "\n";
                        if (a.getLifeTime() > a.getMaxLifeTime() / 4
                                && b.getLifeTime() > b.getMaxLifeTime() / 4
                                && a.getPregnantTime() >= a.getMaxPregnantTime() + 1
                                && b.getPregnantTime() >= b.getMaxPregnantTime() + 1) {


                            std::cout << "zeit2: " << a.getPregnantTime() << "\n";
                            (*((Creature*) (d))).setPregnant(true); //TODO::
                            std::cout << "zeit3: " << a.getPregnantTime() << "\n";
                        }

                    }
                    timePassed(d, i, j);
                } else {

                }
            }
        }
        print();
    }

}

bool World::smell(Creature* d, int* plusX, int* plusY) {

    int range = (*d).getRangeOfSmellDetection();


    //the currently smallest distance between the
    //creature *d and the current Life in range
    int currentKleinsterAbstandA = range + 1;
    int currentKleinsterAbstandB = range + 1;
    int currentKleinsterAbstandC = range + 1;

    //the location in map of the best Life to interact.
    int posxA, posyA, posxB, posyB, posxC, posyC;

    //the position where to go
    int plxA = -1, plxB = -1, plxC = -1;
    int plyA = -1, plyB = -1, plyC = -1;

    int cwidth = *plusX;
    int cheight = *plusY;

    bool foundA = false;
    bool foundB = false;
    bool foundC = false;

    //the maximal distance between the current creature and
    //another life with which the current creature is interacting
    int maxStink = maximum(maximum(ConsumerI::rangeSmellAbgeben,
            ConsumerII::rangeSmellAbgeben), Vegetal::rangeSmellAbgeben);


    //for loop going through the array of Life.
    for (int i = cwidth - range - maxStink; i < cwidth + range + maxStink; i++) {
        for (int j = cheight - range - maxStink; j < cheight + range + maxStink; j++) {

            //do not interact with yourself
            if (i == cwidth && j == cheight) {
                j++;
            }

            //calculate distance
            int abstand = abs(*plusX - i) + abs(*plusY - j);

            //calculate the 'real' position of the current creature. Here
            //it is necessary to use the modulo method, because i and
            //j can be signed integers.
            int a = modulo(i, width);
            int b = modulo(j, height);


            //Interactions of ConsumerI. ConsumerI is able to
            //	(1) eat a Vegetal
            //	(2) reproduce with another ConsumerI
            if (dynamic_cast<ConsumerI*> (d)) {

                //CONSUMERI X VEGETAL:
                //eat a vegetal
                if (dynamic_cast<Vegetal*> (map[a][b])) {

                    //if the current element is the 'best' food
                    //and in range
                    if (abstand < range + (*map[a][b]).getStinkRange()
                            && abstand <= currentKleinsterAbstandA) {

                        //contains the currently best value for a
                        currentKleinsterAbstandA = abstand;

                        //save the position othe
                        posxA = a;
                        posyA = b;
                        plxA = i - cwidth;
                        plyA = j - cheight;
                        foundA = true;
                    }
                }
                    //CONSUMERI X CONSUMERI:
                else if (dynamic_cast<ConsumerI*> (map[a][b])) {

                    //if
                    //	(1) best object in range
                    //	(2) is in smell range
                    if (abstand <= currentKleinsterAbstandB
                            && abstand < range + (*map[a][b]).getStinkRange()) {

                        //save consumer and maximal life time
                        ConsumerI* ob1 = (ConsumerI*) d;
                        ConsumerI* ob2 = (ConsumerI*) map[a][b];
                        int mlt = (*ob1).getMaxLifeTime();

                        //check that both consumer are old enough
                        //to reproduce.
                        if (((*ob1).getLifeTime() > mlt / 4)
                                && ((*ob1).getX() != (*ob2).getX() || (*ob1).getY() != (*ob2).getY())
                                && ((*ob1).getPregnantTime() >= (*ob1).getMaxPregnantTime() + 1)
                                && ((*ob2).getPregnantTime() >= (*ob2).getMaxPregnantTime() + 1)
                                && (*ob2).getLifeTime() > mlt / 4) {


                            currentKleinsterAbstandB = abstand;
                            posxB = a;
                            posyB = b;
                            plxB = i - cwidth;
                            plyB = j - cheight;
                            foundB = true;
                        }
                    }

                    //CONSUMERI X CONSUMERII:
                } else if (dynamic_cast<ConsumerII*> (map[a][b])) {

                    if (abstand <= currentKleinsterAbstandC
                            && abstand < range + (*map[a][b]).getStinkRange()) {

                        currentKleinsterAbstandC = abstand;
                        posxC = a;
                        posyC = b;
                        plxC = i - cwidth;
                        plyC = j - cheight;
                        foundC = true;
                    }
                }
            }
                /*
                 * ConsumerII muss entweder über
                 * Pflanzen laufen oder um Pflanzen
                 * herumgehen können...
                 */

                //CONSUMERII:
            else if (dynamic_cast<ConsumerII*> (d)) {

                //CONSUMERII X CONSUMERI:
                if (dynamic_cast<ConsumerI*> (map[a][b])) {
                    if (abstand <= currentKleinsterAbstandA) {
                        if ((*map[a][b]).getStinkRange() >= abstand) {
                            currentKleinsterAbstandA = abstand;
                            posxA = a;
                            posyA = b;
                            plxA = i - cwidth;
                            plyA = j - cheight;
                            foundA = true;
                        }
                    }
                }                    
                //CONSUMERII X CONSUMERII:
                else if (dynamic_cast<ConsumerII*> (map[a][b])) {

                    //NEU:
                    if (abstand <= currentKleinsterAbstandB
                            && abstand < range + (*map[a][b]).getStinkRange()) {

                        //save consumer and maximal life time
                        ConsumerII* ob1 = (ConsumerII*) d;
                        ConsumerII* ob2 = (ConsumerII*) map[a][b];
                        int mlt = (*ob1).getMaxLifeTime();

                        //check that both consumer are old enough
                        //to reproduce.
                        if (((*ob1).getLifeTime() > mlt / 4)
                                && ((*ob1).getX() != (*ob2).getX() || (*ob1).getY() != (*ob2).getY())
                                && ((*ob1).getPregnantTime() >= (*ob1).getMaxPregnantTime() + 1)
                                && ((*ob2).getPregnantTime() >= (*ob2).getMaxPregnantTime() + 1)
                                && (*ob2).getLifeTime() > mlt / 4) {


                            currentKleinsterAbstandB = abstand;
                            posxB = a;
                            posyB = b;
                            plxB = i - cwidth;
                            plyB = j - cheight;
                            foundB = true;
                        }
                    }
                }
            }
        }
    }

    //entscheide, was machen: fliehen, fressen, vermehren
    int TWF = (*d).getTimeWithoutFood();
    int MTWF = (*d).getMaxTimeWithoutFood();

    //gesamte stink range

    int FE = 0;
    int PE = 0;
    int STE = 0;
    if (foundA)
        FE = ((*d).getRangeOfSmellDetection() + (map[posxA][posyA])->getStinkRange())
        - (abs(cwidth - posxA) + abs(cheight - posyA));
    if (foundB)
        PE = ((*d).getRangeOfSmellDetection() + (map[posxB][posyB])->getStinkRange())
        - (abs(cwidth - posxB) + abs(cheight - posyB));
    if (foundC)
        STE = ((*d).getRangeOfSmellDetection() + (map[posxC][posyC])->getStinkRange())
        - (abs(cwidth - posxC) + abs(cheight - posyC));


    int score = FE * (TWF / MTWF) + (STE - PE) * ((MTWF - TWF) / MTWF);

    std::cout << "smell(): currents score\n" << score;
    //SOLL ALLES IN FUNKTIONEN!!!
    if (foundA) {

        *plusX = plxA;
        *plusY = plyA;
        //std:: cout << "too " << (plx) << "." << (ply) << "\n";

        return foundA;
    } else if (foundB) {

        *plusX = plxB;
        *plusY = plyB;
        return true;
    }

    return false;
}

void World::timePassed(Creature* d, int i, int j) {

    //increase values 
    (*d).setTimeWithoutFood((*d).getTimeWithoutFood() + 1);
    (*d).setLifeTime((*d).getLifeTime() + 1);
    //birth
    if ((*d).increasePregnantTime()) {

        for (int x = -1; x <= 1; x++) {
            for (int y = -1; y <= 1; y++) {

                //TODO: getX und getY refreshen und so.
                int xPos = modulo((*d).getX() + x, width);
                int yPos = modulo((*d).getY() + y, height);
                if (map[xPos][ yPos] == NULL) {

                    if (dynamic_cast<ConsumerI*> (map[i][j])) {
                        map[xPos][ yPos] = new ConsumerI(xPos, yPos);
                    } else if (dynamic_cast<ConsumerII*> (map[i][j])) {
                        map[xPos][ yPos] = new ConsumerII(xPos, yPos);

                        std::cout << "-----C2 hat ein Kind bekommen---\n";
                    }
                    x = 100;
                    y = 100;
                    break;
                }
            }
        }
    }


    if ((*d).getTimeWithoutFood() >= (*d).getMaxTimeWithoutFood()
            || (*d).getLifeTime() >= (*d).getMaxLifeTime()) {

        std::cout << "I died!\n";
        std::cout << "current time without food: " << (*d).getTimeWithoutFood() << "\n" << "current life time: " << (*d).getLifeTime() << "\n";
        map[i][j] = NULL;
    }
}

void World::print() {

    sleepd(400);
    //system("clear");


    std::cout << "\n +";
    for (int i = 0; i < width; i++) {
        std::cout << "---+";
    }

    std::cout << "\n";
    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            if (j == 0) {
                std::cout << " |";
            }


            if (dynamic_cast<ConsumerI*> (map[j][i])) {

                std::cout << " c |";
            } else if (dynamic_cast<ConsumerII*> (map[j][i])) {
                Creature* c = (Creature*) map[j][i];
                if ((*c).getPregnantTime()<((*c)).getMaxPregnantTime()) {
                    std::cout << " P |";
                } else {
                    std::cout << " C |";
                }
            } else if (dynamic_cast<Vegetal*> (map[j][i])) {
                std::cout << " v |";
            } else {
                std::cout << "   |";
            }

        }

        std::cout << "\n";
        for (int j = 0; j < width; j++) {
            if (j == 0) {

                std::cout << " +";
            }
            std::cout << "---+";

        }
        std::cout << "\n";
    }
}

int World::maximum(int a, int b) {

    if (a < b)
        return a;
    return b;
}



int main(int _anzParam, char** strings) {


    //strain("bla");
    //	strain("Vegetal.o");
    //strain("Debug");

    //	return 0;
    /*
     * parameter syntax (8):
     *	1	[int]	height
     *	2	[int]	width
     *	3	[int]	maximal number of steps in one simulation
     *	4	[int]	number of consumer 1 at the beginning
     *	5	[int]	number of consumer 2 at the beginning
     *	6	[char*]	path to vegetal.txt
     *	7	[char*]	path to consumer1.txt
     *	8	[char*]	path to consumer2.txt
     */
    std::string errorMessage =
            (std::string)"Recall World with 8 parameters like \n" +
            (std::string)"World [int] [int] [int] [int] [int] [char*] [char*] [char*]" +
            (std::string) "\n\n1st Param	[height]\n2nd param	[width]\n" +
            (std::string) "3rd param	[maxNumberOfStepsInSimulation]\n4th param	" +
            (std::string) "[NumberOfC1AtTheBeginning]\n5th param	" +
            (std::string) "[NumberOfC2AtTheBeginning]<<\n6th param	[pathToVegetal.txt]" +
            (std::string) "\n7th param	[pathToConsumerI]\n8th param	[consumer2]\n";


    //if the amount of parameters is not equal to 8 + 1.
    if (_anzParam != 9) {

        //print error message
        std::cout << "Missing arguments.\n" << errorMessage;
        return -1;
    }

    //save integer values
    int height = atoi(((std::string)strings[1]).c_str());
    int width = atoi(((std::string)strings[2]).c_str());
    int maxNumberOfSteps = atoi(((std::string)strings[3]).c_str());
    int numberConsumer1 = atoi(((std::string)strings[4]).c_str());
    int numberConsumer2 = atoi(((std::string)strings[5]).c_str());


    //check whether integer values are correct (greater than 0)
    if (height <= 0 || width <= 0 || maxNumberOfSteps <= 0
            || numberConsumer1 < 0 || numberConsumer2 < 0) {


        //print error message
        std::cout << "Wrong arguments.\n" << errorMessage;
        return -1;
    }

    if (!is_file(strings[6]) || !is_file(strings[8]) || !is_file(strings[7])) {
        std::cout << "file does not exist or is a directory" << strings[6];
        return -1;
    }

    // * test

    new World(numberConsumer1, numberConsumer2, maxNumberOfSteps);
    return 0;
}

