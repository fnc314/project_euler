# a = []

# (1..1000).each { |x| a << x}

# b = a.map {|x| x % 3 == 0 || x % 5 == 0}

# b1 = b.map! { |x| x.to_i }

# c = b1.inject(0) { |sum, x| sum + x}

# return c

def ep1():
	sum = 0
	for i in range(0,1000):
		if i % 3 == 0 or i % 5 == 0:
			sum += i
			i+=1
		else:
			i+=1
	print sum
	return sum

ep1()