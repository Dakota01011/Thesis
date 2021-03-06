#ifndef KNN_KNN_H
#define KNN_KNN_H

#include <iostream>
#include <stdio.h>
#include <math.h>
#include "DataSet.h"
#include "FPGAHelper.h"
using namespace std;

class KNN {

public:
    static void kNNClassify(int dataPoint[NUM_FEATURES], int trainingData[NUM_POINTS][NUM_FEATURES], int k);
    static void kNNFPGAClassify(int dataPoint[NUM_FEATURES], int trainingData[NUM_POINTS][NUM_FEATURES], int k);
};

#endif //KNN_KNN_H
