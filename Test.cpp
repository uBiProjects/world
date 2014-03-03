/**
* This class is used to read the files Vegetal.txt, Consumer1.txt,
* Consumer2.txt and store all the values of Vegetals (V),
* Consumer1 (CI/C1), and Consumer2 (CII/C2).
* The programm can access those values.
*/

/**
* Imports
*/
#include <iostream>
#include <fstream>
#include <string>
#include <stdlib.h>
#include "Test.h"

using namespace std;


/**
* Constructor for Test.
* Reads and stores the the files.
*/
Test::Test(){

 	int* pointer=Test::readFile((char*)"Vegetal.txt");
	print(pointer);
	writeV(pointer);
	
	pointer=Test::readFile((char*)"Consumer1.txt");
	print(pointer);
	writeCI(pointer);
	
	pointer=Test::readFile((char*)"Consumer2.txt");
	print(pointer);
	writeCII(pointer);
	
	testAllValues();
	
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
int* Test::readFile(char* filename){

	//Declare some variables and assign values:
	string STRING;
    string temp="";
    ifstream infile;
    infile.open (filename);
	filerows=0;
    
    // Determine number of lines:
    while(!infile.eof()) 
    {
  	getline(infile,STRING);
  	filerows++;
    }
    
    //Declare array for values:
    int* p = (int*)( malloc(filerows *sizeof(int)));
    
    //Reopen File:
    infile.close();
    infile.open (filename);
    
    //Extract values from STRING to temp
    for(int j=0; !infile.eof();j++){
	  	getline(infile,STRING);
	  	for(int i=0;i<STRING.length();i++){
	  		if(STRING.at(i)=='\t'){
	  			for(i++;i<STRING.length();i++){
	  				temp+=STRING.at(i);
	  			}
	  		}
	  	}
  	
  		//Convert values from string to int:
	  	p[j]=atoi(temp.c_str());
	  	temp="";
  	
    }
    infile.close();
    return p;
}

/**
* Writes plant-values.
*/
void Test::writeV(int* pointer){
	PLT = pointer[0];
	PMLT = pointer[1];
	PSE = pointer[2];
}

/**
* Writes consumer1-values.
*/
void Test::writeCI(int* pointer){
	CILT = pointer[0];
	CIMLT = pointer[1];
	CISE = pointer[2];
	CISD = pointer[3];
	CIMTWF = pointer[4];
	CITWF = pointer[5];
	CIS = pointer[6];
}

/**
* Writes consumer2-values.
*/
void Test::writeCII(int* pointer){
	CIILT = pointer[0];
	CIIMLT = pointer[1];
	CIISE = pointer[2];
	CIISD = pointer[3];
	CIIMTWF = pointer[4];
	CIITWF = pointer[5];
	CIIS = pointer[6];
}

//---GETTER---

int Test::getPMLT(){
	return PMLT;
}
int Test::getPSE(){
	return PSE;
}
int Test::getCIMLT(){
	return CIMLT;
}
int Test::getCISE(){
	return CISE;
}
int Test::getCIMTWF(){
	return CIMTWF;
}
int Test::getCIS(){
	return CIS;
}
int Test::getCIIMLT(){
	return CIIMLT;
}
int Test::getCIISE(){
	return CIISE;
}
int Test::getCIIMTWF(){
	return CIIMTWF;
}
int Test::getCIIS(){
	return CIIS;
}

//---TEST FUNCTIONS---

/**
* Prints an array.
* Method is only used for test purposes.
*/
void Test::print(int* pointer){

	for(int i=0;i<filerows-1;i++){
		cout<<pointer[i]<<endl;
	}
		cout<<""<<endl;
}

/**
* Prints all values for test purposes.
*/
void Test::testAllValues(){
	//Print plant values
	cout<<PLT<<endl;
	cout<<PMLT<<endl;
	cout<<PSE<<endl;
	//Print c1 values
	cout<<CILT<<endl;
	cout<<CIMLT<<endl;
	cout<<CISE<<endl;
	cout<<CISD<<endl;
	cout<<CIMTWF<<endl;
	cout<<CITWF<<endl;
	cout<<CIS<<endl;
	//Print c2 values
	cout<<CIILT<<endl;
	cout<<CIIMLT<<endl;
	cout<<CIISE<<endl;
	cout<<CIISD<<endl;
	cout<<CIIMTWF<<endl;
	cout<<CIITWF<<endl;
	cout<<CIIS<<endl;
}


Test Test :: getInstance(){

}
