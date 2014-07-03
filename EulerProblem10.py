# import math
from sympy import primerange

def ep10():
	primes = list(primerange(1,2000000))
	total = 0
	for p in primes:
		total += p

	return total

print ep10()

# CORRECT

#
#
# def prime_factors(x):
# 	prime_factors=[]
# 	for i in range(2, int(math.sqrt(x))):
# 		if x % i == 0:
# 			False
# 		else:
# 			prime_factors.append(i)
# 	return prime_factors
#
# print prime_factors(400)
