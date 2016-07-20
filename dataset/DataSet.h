/*
 * DataSet.h
 *
 *  Created on: Jul 20, 2016
 *      Author: dkoellin
 */

#ifndef SRC_DATASET_H_
#define SRC_DATASET_H_

#define NUM_FEATURES 6
#define NUM_POINTS 5

class DataSet {
public:
	DataSet();
	void getMyIntDataSet(int pArray[NUM_POINTS][NUM_FEATURES]);
	virtual ~DataSet();
};

#endif /* SRC_DATASET_H_ */
