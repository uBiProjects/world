#ifndef TEST_H
#define TEST_H

class Test {

private:
	//Variables:
	int filerows;
	int* readFile(char*);
	int* values;
	
	//Life Values:
	int PLT, PMLT, PSE;
	int CILT, CIMLT, CISE, CISD, CIMTWF, CITWF, CIS;
	int CIILT, CIIMLT, CIISE, CIISD, CIIMTWF, CIITWF, CIIS;
	
	//Functions:
	void print(int*);
	void writeV(int*);
	void writeCI(int*);
	void writeCII(int*);
	void testAllValues();
	
public:
	Test();
	
	//Getter:
	int getPMLT();
	int getPSE();
	int getCIMLT();
	int getCISE();
	int getCIMTWF();
	int getCIS();
	int getCIIMLT();
	int getCIISE();
	int getCIIMTWF();
	int getCIIS();
 	
};

#endif
