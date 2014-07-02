'''
	This is not necessarily an algorithm problem and can be handled with a little bit of forethought before computations.
	To save time, we first focus on the primes in the given range of divisors [1,20], and know from the primes we can generate
	each and every number inbetween.  This way we can focus on finding the largest instance of any power of a prime and know that
	we will still generate the smallest such integer with all of the divisors in question.

	Primes:
	1, 2, 3, 5, 7, 11, 13, 17, 19
	Necessary Factors:
	1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20
	-OR-
	Prime Decomposition of Necessary Factors
	1, 2^1, 3^1, 2^2, 5^1, 2*3, 7^1, 2^3, 3^2, 2*5, 11^1, 2^2 * 3, 13^1, 2*7, 3*5, 2^4, 17^1, 2 * 3^2, 19^1, 2^2 * 5

	We need a number that can satisfy division by each of the necessary factors and using Prime Decomposition
	It is easier to build such a number.

	Clearly our result will be even and need to end in a 0 (to satisfy division by 10).  Being divisible by 10 and then remaining even
	will allow for divisibility by 20.  So the last two digits of our goal number ar e0 where e is some even number.  It seems that we will
	also need a factor of 7, 11, 13, 17, and 19.  We will need the largest power of 2 and the largest power of 3.  So far it seems we have:
		1 * 2 ^ 4 * 3 ^ 2 * 5 * 7 * 11 * 13 * 17 * 19 = 232792560
'''

answer = 1 * (2 ** 4) * (3**2) * 5 * 7 * 11 * 13 * 17 * 19 # 232792560

print answer

# CORRECT
