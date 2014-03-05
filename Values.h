

#ifndef TEST_H
#define TEST_H

class Values {

private:
	//Variables:
	int filerows;
	int* readFile(char*);
	int* values;
	
	//Life Values:
	int VegLifeTime, VegMaxLifeTime, VegSmellEmission;
	int CILifeTime, CIMaxLifeTime, CISmellEmission, CISmellDetection, CIMaxTimeWithoutFood, CITimeWithoutFood, CISpeed;
	int CIILifeTime, CIIMaxLifeTime, CIISmellEmission, CIISmellDetection, CIIMaxTimeWithoutFood, CIITimeWithoutFood, CIISpeed;
	
	//Functions:
	void print(int*);
	void writeV(int*);
	void writeCI(int*);
	void writeCII(int*);
	void testAllValues();
	void checkValues();
	
	static Values *instance;
//	static bool created;
	Values(char*,char*,char*);

public:
	
	//Getter:
	int getVegMaxLifeTime();
	int getVegSmellEmission();

	//getter for
	int getCILifeTime();
	int getCIMaxLifeTime();
	int getCISmellEmission();
	int getCISmellDetection();
	int getCIMaxTimeWithoutFood();
	int getCITimeWithoutFood();
	int getCISpeed();

	int getCIILifeTime();
	int getCIIMaxLifeTime();
	int getCIISmellEmission();
	int getCIISmellDetection();
	int getCIIMaxTimeWithoutFood();
	int getCIITimeWithoutFood();
	int getCIISpeed();

	int getVegLifeTime();

	~Values();

	static Values* getInstance();
	static void setInstance(char*,char*,char*);
};


#endif
