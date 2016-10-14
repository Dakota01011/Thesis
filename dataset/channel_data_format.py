import re

def data_format(name):
	"convert data from .dat into a cpp file for compile into zynq"

	numberOfChannels = 2 # change for different channels

	dataInName = name + '.dat'
	dataOutName = name + '-channels.dat'

	#find number of points
	data_file = open(dataInName, 'r')
	num_points = 0
	for line in data_file.readlines():
		num_points = num_points + 1
	data_file.close()
	inject_point = ((num_points-1)/2)+1
	#print('inject: '+str(inject_point))
	#print('total: '+str(num_points))

	data_file = open(dataInName, 'r')
	data_file_out = open(dataOutName, 'w')

	numbers = []
	full_ref = []
	pointCounter = 0
	num_points = 0
	isRefPoint = True
	for line in data_file.readlines():
		num_points = num_points + 1
		#print(str(num_points))
		numbers.append(re.split('\t', line))
		if isRefPoint:
			#print('IF')
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
					full_ref.append(num)
					for x in range(1, numberOfChannels):
						data_file_out.write('\t' + str(num))
			data_file_out.write('\n')
			isRefPoint = False
			del numbers[:]
		else:
			#print('ELSE')
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
			if num_points == inject_point:
				#print('inject!')
				#print(full_ref)
				first = True
				for x in full_ref:
					if first:
						first = False
						data_file_out.write('-2\t0\t0')
					else:
						data_file_out.write('\t0\t0')
				data_file_out.write('\n')
				first = True
				for x in full_ref:
					if first:
						first = False
						data_file_out.write('-1\t' + x + '\t' + x)
					else:
						data_file_out.write('\t' + x + '\t' + x)
				data_file_out.write('\n')
	first = True
	for x in full_ref:
		if first:
			first = False
			data_file_out.write('-2\t0\t0')
		else:
			data_file_out.write('\t0\t0')
	data_file_out.write('\n')

	data_file.close()
	data_file_out.close()
