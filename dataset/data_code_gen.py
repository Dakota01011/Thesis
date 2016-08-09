# convert data from .dat into a cpp file for compile into zynq
import re

data_file = open('training-data1.dat', 'r')
h_file = open('DataSet.h', 'w')
cpp_file = open('DataSet.cpp', 'w')

h_file.write('''/*
 * DataSet.h
 *
 *  Created on: Jul 20, 2016
 *      Author: dkoellin
 */

#ifndef SRC_DATASET_H_
#define SRC_DATASET_H_

''')

cpp_file.write('''/*
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
''')

num_points = 0
num_features = 0
first_start = True
for line in data_file.readlines():
	num_points = num_points + 1
	nums_inline = re.split('\t', line)
	num_features = 0
	if first_start:
		cpp_file.write('\t\t{')
		first_start = False
	else:
		cpp_file.write(',\n\t\t{')
	first_inline = True
	for num in nums_inline:
		num_features = num_features + 1
		if first_inline:
			cpp_file.write(num)
			first_inline = False
		else:
			if num[-1:]== '\n': # Check last char
				num = num[:-1] # Remove last char
			cpp_file.write(', ' + num)
	cpp_file.write('}')

h_file.write('#define NUM_FEATURES ' + str(num_features) + '\n')
h_file.write('#define NUM_POINTS ' + str(num_points) + '\n')

h_file.write('''
class DataSet {
public:
	DataSet();
	void getMyIntDataSet(int pArray[NUM_POINTS][NUM_FEATURES]);
	virtual ~DataSet();
};

#endif /* SRC_DATASET_H_ */
''')

cpp_file.write('''\n\t};
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

''')

data_file.close()
h_file.close()
cpp_file.close()

