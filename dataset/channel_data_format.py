# convert data from .dat into a cpp file for compile into zynq
import re

numberOfChannels = 2 # change for different channels

data_file = open('training-data2.dat', 'r')
data_file_out = open('training-data2-channels.dat', 'w')

numbers = []
pointCounter = 0
isRefPoint = True
for line in data_file.readlines():
	numbers.append(re.split('\t', line))
	if isRefPoint:
		ref = numbers[0]
		isFirst = True
		for num in ref:
			if num[-1:]== '\n': # Check last char
				num = num[:-1] # Remove last char
			if isFirst: # id number
				data_file_out.write(num)
				isFirst = False
			else:
				data_file_out.write('\t' + str(num))
				for x in range(1, numberOfChannels):
					data_file_out.write('\t0')
		data_file_out.write('\n')
		isRefPoint = False
		del numbers[:]
	else:
		pointCounter += 1
		if pointCounter >= numberOfChannels:
			data_file_out.write(numbers[0][0])
			for col in range(1, len(numbers[0])):
				for row in range(numberOfChannels):
					if numbers[row][col][-1:]== '\n': # Check last char
						numbers[row][col] = numbers[row][col][:-1] # Remove last char
					data_file_out.write('\t' + str(numbers[row][col]))
			data_file_out.write('\n')
			del numbers[:]
			pointCounter = 0

data_file.close()
data_file_out.close()

