from math import sqrt

def factor_machine(x):
	factors=[]
	for i in range(1, int(sqrt(x))):
		if x % i == 0:
			factors.append(i)
	return factors

def prime_machine(x):
	primes = []
	for i in range(0, len(x)):
		if x[i] == 1 or (x[i] % 2 == 0 and x[i] > 2):
			True
		if x[i] == 2:
			primes.append(x[i])
		for n in range(3, x[i]):
			if x[i] % n == 0:
				False
			else:
				primes.append(x[i])
	return primes


print factor_machine(600851475143)
print prime_machine([1,2,3,5,7,10,21,31,100])