/*
 * DataSet.cpp
 *
 *  Created on: Jul 20, 2016
 *      Author: dkoellin
 */

#include "DataSet.h"

DataSet::DataSet()
{

}

void DataSet::getMyIntDataSet(int pArray[NUM_POINTS][NUM_FEATURES])
{
	int myIntDataSet[NUM_POINTS][NUM_FEATURES] = {
		{0, 5, 10, 7, 9, 6},
		{1, 1, 1, 1, 1, 1},
		{2, 2, 2, 2, 2, 2},
		{3, 2, 2, 2, 2, 2},
		{4, 5, 5, 5, 5, 5}
	};
	for (int i = 0; i < NUM_POINTS; i++)
	{
		for (int j = 0; j < NUM_FEATURES; j++)
		{
			pArray[i][j] = myIntDataSet[i][j];
		}
	}
}

DataSet::~DataSet()
{
	// TODO Auto-generated destructor stub
}

