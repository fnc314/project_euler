def ep2():
	Fib1 = 1
	Fib2 = 2
	a = 2
	while a < 4000000:
		Fib1 = Fib1 + Fib2
		if Fib1 % 2 == 0:
			a = a + Fib1
		Fib2 = Fib2 + Fib1
		if Fib2 % 2 == 0:
			a = a + Fib2
	print a

ep2()

# CORRECT
