#include "DataPoint.h"

void DataPoint::setPoint(int new_points[], int num_features)
{
	id = new_points[0];
	for (int i = 1; i < num_features; ++i)
	{
		points.push_back(new_points[i]);
	}
}

std::istream &operator>>(std::istream &is, DataPoint &dataPoint) {
    // get whole line
    std::string line;
    getline(is, line);

    // start parsing here
    std::istringstream ss(line);
    std::string field;

    // get id
    getline(ss, field, ',');
    char * pEnd;
    dataPoint.id = strtol(field.c_str(), &pEnd, 10);

    // get classification
    getline(ss, field, ',');
    dataPoint.classification = field;

    // get features
    while (getline(ss, field, ',')) {
        dataPoint.points.push_back(strtol(field.c_str(), &pEnd, 10));
    }

    return is;
}

std::ostream &operator<<(std::ostream &os, DataPoint &dataPoint) {
    os << dataPoint.id << "[" << dataPoint.classification << "]: ";
    for (uint i = 0; i < dataPoint.points.size(); i++) {
        os << dataPoint.points[i] << " ";
    }
    return os;
}

void DataPoint::clear() {
    id = -1;
    classification.clear();
    points.clear();
}
