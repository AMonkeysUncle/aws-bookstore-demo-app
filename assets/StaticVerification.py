#Joshua Robin 1299049
import sys

lineCheck = '//Joshua Robin 1299049\n'

with open('src/__tests__/sum.test.tsx') as f:
	firstTest = f.readline()
	#print (firstTest)

#with open('src/__tests__/sum.test - Copy.tsx') as f:
#	secondTest = f.readline()
#	#print (secondTest)


if firstTest == lineCheck:
	print('1')
	sys.exit(0)

print('0')
sys.exit(0)