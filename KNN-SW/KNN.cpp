#include "KNN.h"
#include "DistanceComparator.h"
#include "FPGAHelper.h"

std::string KNN::kNNClassify(DataPoint dataPoint, std::vector<DataPoint> trainingData, unsigned long k) {
    DistanceComparator comparator(dataPoint);
    sort(trainingData.begin(), trainingData.end(), comparator);
    trainingData.resize(k);

    return maxClassification(trainingData);
}

std::string KNN::kNNFPGAClassify(DataPoint dataPoint, std::vector<DataPoint> trainingData, int k) {
    FPGAHelper fpga;

    // reset it by writing a 1 and then a 0 to the reset bit in the control reg
    fpga.reset();

    // write the k value to the k reg
    fpga.writeK(k);

    // write a 1 to the load bit in the control reg
    fpga.writeLoadBit(1);

    // write the dimensions of the reference point into the refdatain reg 1 dimension at a time
    for (int i = 0; i < dataPoint.points.size(); i++) {
        fpga.writeRefData(dataPoint.points[i]);
    }

    // clear the load bit in the control reg
    fpga.writeLoadBit(0);

    // load all of the training data to FPGA
    for (int i = 0; i < trainingData.size(); i++) {
        DataPoint current = trainingData[i];

        // write the dimensions of the data point to calculate into the datavaluein reg 1 dimension at a time.
        for (int j = 0; j < current.points.size(); j++) {
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
    std::map<int, int> results;
    for (int i = 0; i < k; i++) {
        results[fpga.readDataName()] = fpga.readDataValue();
    }

    // Below is not related to FPGA, just the classification logic
    return maxClassification(results, trainingData);
}

std::string KNN::maxClassification(std::map<int, int> neighborMap, std::vector<DataPoint> &points) {
    std::vector<DataPoint> found;

    for (int i = 0; i < points.size(); i++) {
        DataPoint current = points[i];

        std::map<int, int>::iterator iter = neighborMap.find(current.id);
        if (iter != neighborMap.end()) {
            // found DataPoint that is in the neighborMap so add to found vector
            found.push_back(current);
        }
    }

    return maxClassification(found);
}

std::string KNN::maxClassification(std::vector<DataPoint> &points) {
    std::map<std::string, int> classes = classFrequencies(points);

    std::string maxKey = "";
    int maxValue = -1;
    for (std::map<std::string, int>::iterator it = classes.begin(); it != classes.end(); ++it) {
        if (it->second > maxValue) {
            maxKey = it->first;
            maxValue = it->second;
        }
    }
    return maxKey;
}

std::map<std::string, int> KNN::classFrequencies(std::vector<DataPoint> &points) {
    std::map<std::string, int> classes;
    for (int i = 0; i < points.size(); i++) {
        classes[points[i].classification]++;
    }
    return classes;
}