import math

def prime_factors(x):
	prime_factors=[]
	for i in range(2, int(math.sqrt(x))):
		if x % i == 0:
			False
		else:
			prime_factors.append(i)
	return prime_factors

print prime_factors(400)