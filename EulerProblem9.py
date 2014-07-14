# http://www.mathblog.dk/pythagorean-triplets/

# a < b < c
# a **2 + b ** 2 = c ** 2 => c = sqrt(a**2 + b**2)
# range(a,b[,c]) returns list starting at (and including) a, incrementing by optional c (defaults to c = 1), and ending at b (but not including b)
# # EX: range(1,50) = [1, 2, ..., 49]
# # EX: range(1,50,3) = [1, 4, 7, ..., 46, 49]
# # EX: range(1,52,3) = [1, 4, 7, ..., 46, 49] #=> We see that '52' is NOT included in output list
# # EX: range(1,53,3) = [1, 4, 7, ..., 46, 49, 52] #=> Because the value of b (or the upper bound of the output list) is GREATER than '52', the output of `range(1, 53, 3)` includes '52'
