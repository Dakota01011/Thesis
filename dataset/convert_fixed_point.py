import re, math

def convert_fp(name):
	"convert data from floating point .dat into int .dat file"

	dataInName = name + '-fp.dat'
	dataOutName = name + '.dat'

	data_file = open(dataInName, 'r')
	data_file_out = open(dataOutName, 'w')

	max_val = 0
	min_val = math.inf
	index = -1
	for line in data_file.readlines():
		line_split = re.split('\t', line)
		isId = True
		isClass = True
		for num in line_split:
			if num[-1:]== '\n': # Check last char
				num = num[:-1] # Remove last char
			if isId: # id number
				data_file_out.write(str(index))
				index += 1
				isId = False
			elif isClass: # ignore classification
				isClass = False
			else: # process number
				# print(num)
				myfloat = abs(float(num))
				binary = []
				position = pow(2, 31)
				intNum = 0
				for x in range(15,-17,-1): # into binary
					if myfloat > pow(2,x):
						myfloat -= pow(2,x)
						binary.append(1)
					else:
						binary.append(0)
				for x in binary: # from binary
					if x:
						intNum += int(position)
					position /= 2
				if myfloat > max_val:
					max_val = myfloat
				if myfloat < min_val:
					min_val = myfloat
				data_file_out.write('\t' + str(intNum))
		data_file_out.write('\n')

	data_file.close()
	data_file_out.close()
	print(str(min_val))
	print(str(max_val))
