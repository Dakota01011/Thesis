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
using namespace std;

int main() {

	init_platform();
	print("Hello\n\r");

	vector<DataPoint> trainingData;
	ifstream trainingFile;
	trainingFile.open("data\training-data.dat");

	if(trainingFile.bad() || trainingFile.fail())
	{
		print("training file failed \n\r");
	}
	else
	{
		print("Finished making stuff\n\r");
		DataPoint tmp;
		while (!trainingFile.eof()) {
			//print("1\n\r");
			trainingFile >> tmp;
			//print("2\n\r");
			trainingData.push_back(tmp); // Add tmp to the trainingData Vector
			//print("3\n\r");
			tmp.clear();
			//print("4\n\r");
		}
		print("got data from file\n\r");

		// testPoint at location (2, 2, 2, 2, 2)
		DataPoint testPoint;
		testPoint.points.push_back(2);
		testPoint.points.push_back(2);
		testPoint.points.push_back(2);
		testPoint.points.push_back(2);
		testPoint.points.push_back(2);
		print("made ref point\n\r");

		// k = 3
		std::cout << "[Standard] Classified as: " << KNN::kNNClassify(testPoint, trainingData, 3) << std::endl;
		std::cout << "[FPGA] Classified as: " << KNN::kNNFPGAClassify(testPoint, trainingData, 3) << std::endl;
	}

	while(1)
	{

	}
}

