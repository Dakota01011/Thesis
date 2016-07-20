#ifndef KNN_DATAPOINT_H
#define KNN_DATAPOINT_H

#include <iostream>
#include <fstream>
#include <vector>
#include <sstream>
#include <algorithm>
#include <map>

class DataPoint {
public:
    int id;
    std::string classification;
    std::vector<int> points;

    void setPoint(int new_points[], int num_features);

    friend std::istream &operator>>(std::istream &is, DataPoint &dataPoint);

    friend std::ostream &operator<<(std::ostream &os, DataPoint &dataPoint);

    void clear();
};


#endif //KNN_DATAPOINT_H
