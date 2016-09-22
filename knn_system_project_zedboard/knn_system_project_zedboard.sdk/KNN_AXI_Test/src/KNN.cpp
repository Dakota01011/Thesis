#include "KNN.h"

void KNN::kNNClassify(int dataPoint[NUM_FEATURES], const int trainingData[NUM_POINTS][NUM_FEATURES], int k) {

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
		distanceList[point] = sqrt(distanceList[point]);
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
	printf("[Standard] K returns: \n\r");
	//cout << "[Standard] K returns: " << endl;
	for(int i = 0; i < k; i++)
	{
		printf("id: %i dist: %6.6f \n\r", idList[i], distanceList[i]);
		//cout << "id: " << idList[i] << " dist: " << distanceList[i] << endl;
	}

}

void KNN::kNNFPGAClassify(const int trainingData[NUM_POINTS][NUM_FEATURES], int outputData[], int k) {
    FPGAHelper fpga;

    // reset it by writing a 1 and then a 0 to the reset bit in the control reg
    fpga.reset();

    // write the k value to the k reg
    fpga.writeK(k);

    // write a 1 to the load bit in the control reg
    fpga.writeLoadBit(1);

    UINTPTR BuffInAddr = (UINTPTR)trainingData;
    UINTPTR BuffOutAddr = (UINTPTR)outputData;
    u32 Length = NUM_FEATURES * NUM_POINTS * 4;
    fpga.activateDMA(BuffInAddr, BuffOutAddr, Length, k);

    // set readEn bit in the control reg
    fpga.writeReadEn(1);
    fpga.writeReadEn(1); //dummy write

}
