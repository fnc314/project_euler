def pythagTrips(x):
	primes = []
	for a in range(1,x) and b in range(1,x) and c in range(1,x):
		if a**2 + b**2 == c**2 and a < b < c:
			primes.append([a,b,c])
	return primes

print pythagTrips(1000000)	
