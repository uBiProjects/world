#include <iostream>
#include <fstream>
#include <string>
using namespace std;

int main ()
{
    string STRING;
    string temp="";
    int filerows=0;;
    ifstream infile;
    infile.open ("bla.txt");

    string previousLine="";
    
    while(!infile.eof()) // Determine number of lines
    {
  	getline(infile,STRING);
  	filerows++;
    }
    
    infile.close();
    infile.open ("bla.txt");
    
    string values[filerows];
    
    for(int j=0; !infile.eof();j++)
    {
  	getline(infile,STRING);
  	for(int i=0;i<STRING.length();i++){
  		if(STRING.at(i)=='\t'){
  			for(i++;i<STRING.length();i++){
  				temp+=STRING.at(i);
  			}
  		}
  	}
  	values[j]=temp;
  	cout<<temp<<endl;
  	temp="";
    }
    infile.close();
    //Wert muss noch returnt werden...
    //return values;
}
