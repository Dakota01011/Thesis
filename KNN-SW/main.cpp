#include <iostream>
#include <fstream>
#include <vector>
#include "DataPoint.h"
#include "KNN.h"

int main() {
    std::vector<DataPoint> trainingData;
    std::ifstream trainingFile("training-data.csv");

    DataPoint tmp;
    while (!trainingFile.eof()) {
        trainingFile >> tmp;
        trainingData.push_back(tmp); // Add tmp to the trainingData Vector
        tmp.clear();
    }

    // testPoint at location (2, 2, 2, 2, 2)
    DataPoint testPoint;
    testPoint.points.push_back(2);
    testPoint.points.push_back(2);
    testPoint.points.push_back(2);
    testPoint.points.push_back(2);
    testPoint.points.push_back(2);

    // k = 3
    std::cout << "[Standard] Classified as: " << KNN::kNNClassify(testPoint, trainingData, 3) << std::endl;
    std::cout << "[FPGA] Classified as: " << KNN::kNNFPGAClassify(testPoint, trainingData, 3) << std::endl;

    return 0;
}

