/**
* This class is used to read the files Vegetal.txt, Consumer1.txt,
* Consumer2.txt and store all the values of Vegetals (V),
* Consumer1 (CI/C1), and Consumer2 (CII/C2).
* The programm can access those values.
*/

#include <iostream>
#include <fstream>
#include <string>
#include <stdlib.h>

#include "Utils.h"
#include "Values.h"

using namespace std;

Values* Values::instance = 0;

/**
* Constructor for Values.
* Reads and stores the the files.
*/
Values::Values(char* a, char* b, char* c){

 	int* pointer=Values::readFile(a);
	writeV(pointer);
	free(pointer);

	pointer=Values::readFile(b);
	writeCI(pointer);
	free(pointer);

	pointer=Values::readFile(c);
	writeCII(pointer);
	free(pointer);
        
    checkValues();
}

//Destructor:
Values::~Values(){
}
/**
 * Reads a file and stores the information
 * in an int array.
 * filename: name of file
 * STRING: used to store one line from the file
 * temp: used to extract a single value from STRING
 * filerows: number of rows in the file
 * infile: file that is being read
 * p: array where the values from temp are stored
 *	after they are converted to int
 */
int* Values::readFile(char* filename) {

    // Declare some variables and assign values:
    string STRING;
    string temp = "";
    ifstream infile;
    infile.open(filename);
    filerows = 0;

    // Determine number of lines:
    while (!infile.eof()) {
        getline(infile, STRING);
        filerows++;
    }

    // Declare array for values:
    int* p = (int*) (malloc(filerows * sizeof (int)));

    // Reopen File:
    infile.close();
    infile.open(filename);

    // Extract values from STRING to temp
    for (int j = 0; !infile.eof(); j++) {
        getline(infile, STRING);
        for (unsigned int i = 0; i < STRING.length(); i++) {
            if (STRING.at(i) == '\t') {
                for (i++; i < STRING.length(); i++) {
                    temp += STRING.at(i);
                }
            }
        }

        // Convert values from string to int:
        p[j] = atoi(temp.c_str());
        temp = "";

    }
    infile.close();
    return p;
}

// FUNCTIONS FOR SAVING VALUES:

/**
* Writes plant-values.
*/
void Values::writeV(int* pointer){
	VegLifeTime = pointer[0];
	VegMaxLifeTime = pointer[1];
	VegSmellEmission = pointer[2];
}

/**
* Writes consumer1-values.
*/
void Values::writeCI(int* pointer){
	CILifeTime = pointer[0];
	CIMaxLifeTime = pointer[1];
	CISmellEmission = pointer[2];
	CISmellDetection = pointer[3];
	CIMaxTimeWithoutFood = pointer[4];
	CITimeWithoutFood = pointer[5];
	CISpeed = pointer[6];
}

/**
* Writes consumer2-values.
*/
void Values::writeCII(int* pointer){
	CIILifeTime = pointer[0];
	CIIMaxLifeTime = pointer[1];
	CIISmellEmission = pointer[2];
	CIISmellDetection = pointer[3];
	CIIMaxTimeWithoutFood = pointer[4];
	CIITimeWithoutFood = pointer[5];
	CIISpeed = pointer[6];
}

// GETTER:

int Values::getVegMaxLifeTime(){
	return VegMaxLifeTime;
}
int Values::getVegSmellEmission(){
	return VegSmellEmission;
}
int Values::getCIMaxLifeTime(){
	return CIMaxLifeTime;
}
int Values::getCILifeTime(){
	return CILifeTime;
}
int Values::getCISmellDetection(){
	return CIISmellDetection;
}
int Values::getCISmellEmission(){
	return CISmellEmission;
}
int Values::getCIMaxTimeWithoutFood(){
	return CIMaxTimeWithoutFood;
}
int Values::getCITimeWithoutFood(){
	return CITimeWithoutFood;
}
int Values::getCISpeed(){
	return CISpeed;
}
int Values::getVegLifeTime(){
	return VegLifeTime;
}
int Values::getCIIMaxLifeTime(){
	return CIIMaxLifeTime;
}
int Values::getCIILifeTime(){
	return CIILifeTime;
}
int Values::getCIISmellEmission(){
	return CIISmellEmission;
}
int Values::getCIISmellDetection(){
	return CIISmellDetection;
}
int Values::getCIIMaxTimeWithoutFood(){
	return CIIMaxTimeWithoutFood;
}
int Values::getCIITimeWithoutFood(){
	return CIITimeWithoutFood;
}
int Values::getCIISpeed(){
	return CIISpeed;
}

Values* Values :: getInstance(){

  if( instance == 0 )
	  exit_error(12);
  return instance;
}

// SETTER:

void Values::setInstance(char* a, char* b, char* c){
	instance = new Values(a, b, c);
}

/**
 * Checks if the entered .txt files are valid
 */
void Values::checkValues(){
    //Checks Veg file
    if(!(VegLifeTime < VegMaxLifeTime &&
	VegMaxLifeTime > 0 &&
	VegSmellEmission > 0)){
        exit_error(13);
    }
    
    //Checks CI file
    if(!(CILifeTime < CIMaxLifeTime &&
	CIMaxLifeTime > 0 &&
	CISmellEmission > 0 &&
	CISmellDetection > 0 &&
	CIMaxTimeWithoutFood > 0 &&
	CITimeWithoutFood < CIMaxTimeWithoutFood &&
	CISpeed > 0)){
        exit_error(14);
    }
            
    //Checks CII file
    if(!(CIILifeTime < CIIMaxLifeTime &&
	CIIMaxLifeTime > 0 &&
	CIISmellEmission > 0 &&
	CIISmellDetection > 0 &&
	CIIMaxTimeWithoutFood > 0 &&
	CIITimeWithoutFood < CIIMaxTimeWithoutFood &&
	CIISpeed > 0
            )){
        exit_error(15);
    }
}

//---TEST FUNCTIONS---

/**
* Prints an array.
* Method is only used for test purposes.
*/
void Values::print(int* pointer){

	for(int i=0;i<filerows-1;i++){
		cout<<pointer[i]<<endl;
	}
		cout<<""<<endl;
}

/**
* Prints all values for test purposes.
*/
void Values::testAllValues(){
	//Print plant values
	cout<<VegLifeTime<<endl;
	cout<<VegMaxLifeTime<<endl;
	cout<<VegSmellEmission<<endl;
	//Print c1 values
	cout<<CILifeTime<<endl;
	cout<<CIMaxLifeTime<<endl;
	cout<<CISmellEmission<<endl;
	cout<<CISmellDetection<<endl;
	cout<<CIMaxTimeWithoutFood<<endl;
	cout<<CITimeWithoutFood<<endl;
	cout<<CISpeed<<endl;
	//Print c2 values
	cout<<CIILifeTime<<endl;
	cout<<CIIMaxLifeTime<<endl;
	cout<<CIISmellEmission<<endl;
	cout<<CIISmellDetection<<endl;
	cout<<CIIMaxTimeWithoutFood<<endl;
	cout<<CIITimeWithoutFood<<endl;
	cout<<CIISpeed<<endl;
}