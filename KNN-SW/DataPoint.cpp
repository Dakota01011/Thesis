#include "DataPoint.h"

std::istream &operator>>(std::istream &is, DataPoint &dataPoint) {
    // get whole line
    std::string line;
    getline(is, line);

    // start parsing here
    std::istringstream ss(line);
    std::string field;

    // get id
    getline(ss, field, ',');
    dataPoint.id = stoi(field);

    // get classification
    getline(ss, field, ',');
    dataPoint.classification = field;

    // get features
    while (getline(ss, field, ',')) {
        dataPoint.points.push_back(stoi(field));
    }

    return is;
}

std::ostream &operator<<(std::ostream &os, DataPoint &dataPoint) {
    os << dataPoint.id << "[" << dataPoint.classification << "]: ";
    for (int i = 0; i < dataPoint.points.size(); i++) {
        os << dataPoint.points[i] << " ";
    }
    return os;
}

void DataPoint::clear() {
    id = -1;
    classification.clear();
    points.clear();
}