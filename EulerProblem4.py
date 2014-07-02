#Two 3 digit numbers make a 6 digit numbers
#range(0,999999)

def palendrome():
	for i in range(1,999):
		for j in range(1,999):
			if str(i*j)[::-1] == str(i*j):
				print i, j

palendrome()