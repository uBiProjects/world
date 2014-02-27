#include <iostream>
#include <fstream>
#include <string>
using namespace std;

int main ()
{
    string STRING;
    ifstream infile;
    infile.open ("bla.txt");
    int a=0;
    string previousLine="";
    while(a<1) // To get you all the lines.
    {
        getline(infile,STRING); // Saves the line in STRING.
        if (STRING != previousLine)
        {
            previousLine=STRING;
            cout<<STRING<<endl; // Prints our STRING.
        }

    }
    infile.close();
}
