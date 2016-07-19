#ifndef KNN_KNN_H
#define KNN_KNN_H

#include "DataPoint.h"

class KNN {

public:
    static std::string kNNClassify(DataPoint dataPoint, std::vector<DataPoint> trainingData, unsigned long k);

    static std::string kNNFPGAClassify(DataPoint dataPoint, std::vector<DataPoint> trainingData, int k);

private:
    static std::string maxClassification(std::vector<DataPoint> &points);

    static std::string maxClassification(std::map<int, int> neighborMap, std::vector<DataPoint> &points);

    static std::map<std::string, int> classFrequencies(std::vector<DataPoint> &points);
};

#endif //KNN_KNN_H
