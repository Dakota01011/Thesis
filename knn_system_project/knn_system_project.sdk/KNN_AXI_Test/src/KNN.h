#ifndef KNN_KNN_H
#define KNN_KNN_H

#include "DataPoint.h"

class KNN {

public:
    static void kNNClassify(DataPoint dataPoint, std::vector<DataPoint> trainingData, unsigned long k);
    static void kNNFPGAClassify(DataPoint dataPoint, std::vector<DataPoint> trainingData, int k);
};

#endif //KNN_KNN_H
