from sympy import divisor_count

# def list_factors(x):
#   factors = []
#
#   for i in range(1,x+1):
#     if x % i == 0:
#       factors.append(i)
#
#   return factors

def triangle_number(n):
  return (n ** 2 + n)/2

# def largest_set_factors(dictionary):
#   for key,value in dictionary.items():
#     if len(value) > 500:
#       return key

def ep12():
  dict_of_factors = {}
  for i in range(1, 1000000):
    num = triangle_number(i)
    if divisor_count(num) > 500:
      return num
      break
  #   # if len(num_factors) > 500:
  #   #   print "FOUND IT!"
  #   #   return num
  #   #   break
  # return largest_set_factors(dict_of_factors)

print ep12()

# CORRECT
