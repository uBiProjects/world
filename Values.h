

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
	
//	static Values *instance;
//	static bool created;
	Values();

public:
	
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

	static Values* getInstance();
};


#endif
