

#ifndef TEST_H
#define TEST_H

class Values {

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
	
	static Values *instance;
//	static bool created;
	Values();

public:
	
	//Getter:
	int getPMLT();
	int getPSE();

	//getter for
	int getCILT();
	int getCIMLT();
	int getCISE();
	int getCISD();
	int getCIMTWF();
	int getCITWF();
	int getCIS();

	int getCIILT();
	int getCIIMLT();
	int getCIISE();
	int getCIISD();
	int getCIIMTWF();
	int getCIITWF();
	int getCIIS();

	int getPLT();

	static Values* getInstance();
};


#endif
