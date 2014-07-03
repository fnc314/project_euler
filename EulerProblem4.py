#Two 3 digit numbers make a 6 digit numbers
#range(0,999999)

def palendrome():
	products = [] # collection of palindromes
	for i in range(1,999):
		for j in range(1,999):
			if i != j:
				if str(i*j)[::-1] == str(i*j):
					# print i, j
					products.append(i*j) # store products that are only palindromes

	print max(products) # true final answer

palendrome()

# CORRECT
