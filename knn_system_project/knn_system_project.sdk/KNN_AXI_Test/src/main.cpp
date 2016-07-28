#include <iostream>
#include <stdio.h>
#include "xparameters.h"
#include "xil_printf.h"
#include "KNN.h"
#include "KNN_accelerator.h"
#include "platform.h"
#include "DataSet.h"
using namespace std;

int main() {

	init_platform();
	print("Hello!\n\r");

	int myIntDataSet[NUM_POINTS][NUM_FEATURES];
	DataSet set;
	set.getMyIntDataSet(myIntDataSet);

	// testPoint at location (2, 2, 2, 2, 2)
	int testPoint[NUM_FEATURES] = {-1, 2, 2, 2, 2, 2};

	print("Now calculating...\n\r");

	// k = 3
	KNN::kNNClassify(testPoint, myIntDataSet, 3);

	KNN::kNNFPGAClassify(testPoint, myIntDataSet, 3);

	while(1)
	{

	}
}

