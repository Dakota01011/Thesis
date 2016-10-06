//============================================================================
// Name        : KNNtest2.cpp
// Author      : Dakota Koelling
// Version     :
// Copyright   : Your copyright notice
// Description : Hello World in C++, Ansi-style
//============================================================================

#include <iostream>
#include <fstream>
#include <math.h>
#include <ctime>
using namespace std;

// 78 features + 1 id number
#define NUM_FEATURES 79
#define NUM_POINTS 50000

void getMyIntDataSet(int testPoint[NUM_FEATURES], int myIntDataSet[NUM_POINTS][NUM_FEATURES]);
void kNNClassify(int dataPoint[NUM_FEATURES], int trainingData[NUM_POINTS][NUM_FEATURES], int k);

int main() {

	int myIntDataSet[NUM_POINTS][NUM_FEATURES];
	int testPoint[NUM_FEATURES];
	getMyIntDataSet(testPoint, myIntDataSet);

	cout << "Now calculating...\n\r" << endl;

	int k = 10;
	clock_t start = clock();
	kNNClassify(testPoint, myIntDataSet, k);
	clock_t end = clock();
	double elapsed_secs = double(end - start) / CLOCKS_PER_SEC;
	cout << "[Standard] Time: " << elapsed_secs << " sec\n\r" << endl;

	return 0;
}

void getMyIntDataSet(int testPoint[NUM_FEATURES], int myIntDataSet[NUM_POINTS][NUM_FEATURES])
{
	// open file
	// set first line with id = -1 to testPoint
	// set rest of lines including id to dataset
	// close file
}

void kNNClassify(int dataPoint[NUM_FEATURES], int trainingData[NUM_POINTS][NUM_FEATURES], int k)
{

	int idList[NUM_POINTS] = {0};
	double distanceList[NUM_POINTS] = {0};

	// Calculate distances
	for (int point = 0; point < NUM_POINTS; ++point)
	{
		// Grab ID
		idList[point] = trainingData[point][0];
		for (int feature = 1; feature < NUM_FEATURES; ++feature)
		{
			distanceList[point] += pow(dataPoint[feature] - trainingData[point][feature], 2);
		}
		// Do not take sqrt because that is extra step
		//distanceList[point] = sqrt(distanceList[point]);
	}

	// Find K min distances
	int min_index = 0;
	for (int var = 0; var < k; ++var)
	{
		min_index = var;
		for (int i = var; i < NUM_POINTS; ++i)
		{
			if (distanceList[i] < distanceList[min_index])
			{
				min_index = i;
			}
		}
		//swap
		double tempdouble = distanceList[min_index];
		distanceList[min_index] = distanceList[var];
		distanceList[var] = tempdouble;
		int tempint = idList[min_index];
		idList[min_index] = idList[var];
		idList[var] = tempint;
	}

	// Print out data
	//printf("[Standard] K returns: \n\r");
	cout << "[Standard] K returns: " << endl;
	for(int i = 0; i < k; i++)
	{
		//printf("id: %i dist: %6.6f \n\r", idList[i], distanceList[i]);
		cout << "id: " << idList[i] << " dist: " << distanceList[i] << endl;
	}

}
