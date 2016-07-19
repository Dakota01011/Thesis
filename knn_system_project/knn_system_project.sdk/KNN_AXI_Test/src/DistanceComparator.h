#ifndef KNN_DISTANCECOMPARATOR_H
#define KNN_DISTANCECOMPARATOR_H

#include "DataPoint.h"
#include <math.h>

class DistanceComparator {
public:
    DistanceComparator(const DataPoint &point);

    bool operator()(const DataPoint &lhs, const DataPoint &rhs) const;

private:
    DataPoint point_;

    int distance(const DataPoint &point) const;
};


#endif //KNN_DISTANCECOMPARATOR_H
