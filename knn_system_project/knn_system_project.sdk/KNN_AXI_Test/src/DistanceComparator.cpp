#include "DistanceComparator.h"

DistanceComparator::DistanceComparator(const DataPoint &point) : point_(point) { }

bool DistanceComparator::operator()(const DataPoint &lhs, const DataPoint &rhs) const {
    return distance(lhs) < distance(rhs);
}

int DistanceComparator::distance(const DataPoint &point) const {
    // calculate distance squared between point and point_
    int sum = 0;
    for (uint i = 0; i < point.points.size(); i++) {
        int feature = point.points[i];
        int otherFeature = point_.points[i];
        sum += pow((otherFeature - feature), 2);
    }

    return sum;
}
