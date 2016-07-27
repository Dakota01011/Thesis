#include "KNN.h"
#include "DistanceComparator.h"
#include "FPGAHelper.h"
using namespace std;

void KNN::kNNClassify(DataPoint dataPoint, std::vector<DataPoint> trainingData, unsigned long k) {
	DistanceComparator comparator(dataPoint);
	sort(trainingData.begin(), trainingData.end(), comparator);
	trainingData.resize(k);

	cout << "[Standard] K returns: " << endl;
	for(uint i = 0; i < trainingData.size(); i++)
	{
		cout << trainingData[i].id << endl;
	}
}

void KNN::kNNFPGAClassify(DataPoint dataPoint, std::vector<DataPoint> trainingData, int k) {
    FPGAHelper fpga;

    // reset it by writing a 1 and then a 0 to the reset bit in the control reg
    fpga.reset();

    // write the k value to the k reg
    fpga.writeK(k);

    // write a 1 to the load bit in the control reg
    fpga.writeLoadBit(1);

    // write the dimensions of the reference point into the refdatain reg 1 dimension at a time
    for (uint i = 0; i < dataPoint.points.size(); i++) {
        fpga.writeRefData(dataPoint.points[i]);
    }

    // clear the load bit in the control reg
    fpga.writeLoadBit(0);

    // load all of the training data to FPGA
    for (uint i = 0; i < trainingData.size(); i++) {
        DataPoint current = trainingData[i];

        // write the dimensions of the data point to calculate into the datavaluein reg 1 dimension at a time.
        for (uint j = 0; j < current.points.size(); j++) {
            fpga.writeDataValue(current.points[j]);
        }

        // after all dimensions of point i are written in, write the points name/id number to the datanamein reg
        fpga.writeDataName(current.id);
    }

    // set readEn bit in the control reg
    fpga.writeReadEn(1);

    // read the datanameout and datavalueout reg k time and that will return
    // the name and square distances of the k nearest neighbors
    // storing the results in a map (mapping id of test point to its distance from the reference)
    cout << "[FPGA] K returns: " << endl;
    for (int i = 0; i < k; i++) {
        fpga.readDataName();
        fpga.readDataValue();
    }



}


