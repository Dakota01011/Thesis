#include "xparameters.h"
#include "xil_printf.h"
#include <iostream>
#include <fstream>
#include <vector>
#include "DataPoint.h"
#include "KNN.h"
#include "KNN_accelerator.h"
#include <stdio.h>
#include "platform.h"
#include "DataSet.h"
using namespace std;

int main() {

	init_platform();
	print("Hello\n\r");

	vector<DataPoint> trainingData;

	int myIntDataSet[NUM_POINTS][NUM_FEATURES];
	DataSet set;
	set.getMyIntDataSet(myIntDataSet);

	print("Finished making stuff\n\r");
	DataPoint tmp;

	for (int i = 0; i < NUM_POINTS; ++i)
	{
		print("1\n\r");
		tmp.setPoint(myIntDataSet[i], NUM_FEATURES);
		print("2\n\r");
		trainingData.push_back(tmp); // Add tmp to the trainingData Vector
		print("3\n\r");
		tmp.clear();
		print("4\n\r");
	}
	print("got data from file\n\r");

	// testPoint at location (2, 2, 2, 2, 2)
	DataPoint testPoint;
	testPoint.id = -1;
	testPoint.points.push_back(2);
	testPoint.points.push_back(2);
	testPoint.points.push_back(2);
	testPoint.points.push_back(2);
	testPoint.points.push_back(2);
	print("made ref point\n\r");

	// k = 3
	std::cout << "[Standard] Classified as: " << KNN::kNNClassify(testPoint, trainingData, 3) << std::endl;
	std::cout << "[FPGA] Classified as: " << KNN::kNNFPGAClassify(testPoint, trainingData, 3) << std::endl;

	while(1)
	{

	}
}

