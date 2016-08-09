# create random data for knn

from random import randint

setNumber = 1
numberPoints = 100
numberDim = 10

data_file = open('training-data' + str(setNumber) + '.dat', 'w')

for i in range(numberPoints):
	for j in range(numberDim):
		num = randint(0,2147483640) # num fit in 32bits
		if i == 0 and j == 0:
			data_file.write(str(i)+'\t'+str(num))
		else:
			if j == 0:
				data_file.write('\n'+str(i)+'\t'+str(num))
			else:
				data_file.write('\t'+str(num))

data_file.close()