# convert data from .dat into a cpp file for compile into zynq
import re

data_file_name = 'training-data2.dat'

data_file = open(data_file_name, 'r')
num_points = 0
num_features = 0
for line in data_file.readlines():
	num_points = num_points + 1
	nums_inline = re.split('\t', line)
	num_features = 0
	for num in nums_inline:
		num_features = num_features + 1
data_file.close()

data_file = open(data_file_name, 'r')
h_file = open('DataSet.h', 'w')

h_file.write('''/*
 * DataSet.h
 *
 *  Created on: Jul 20, 2016
 *      Author: dkoellin
 */

#ifndef SRC_DATASET_H_
#define SRC_DATASET_H_

''')

h_file.write('#define NUM_FEATURES ' + str(num_features) + '\n')
h_file.write('#define NUM_POINTS ' + str(num_points) + '\n\n')

h_file.write('''const int myIntDataSet[NUM_POINTS][NUM_FEATURES] = {\n''')

num_points = 0
num_features = 0
first_start = True
for line in data_file.readlines():
	num_points = num_points + 1
	nums_inline = re.split('\t', line)
	num_features = 0
	if first_start:
		h_file.write('\t{')
		first_start = False
	else:
		h_file.write(',\n\t{')
	first_inline = True
	for num in nums_inline:
		num_features = num_features + 1
		if first_inline:
			h_file.write(num)
			first_inline = False
		else:
			if num[-1:]== '\n': # Check last char
				num = num[:-1] # Remove last char
			h_file.write(', ' + num)
	h_file.write('}')

h_file.write('''
};

#endif /* SRC_DATASET_H_ */
''')

data_file.close()
h_file.close()

