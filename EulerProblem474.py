import math
import re

def factors_of(n):
  factors = [1,n]
  range_max = int(math.sqrt(n)) + 1
  for i in range(2,range_max):
    if n % i == 0:
      factors.append(i)
      factors.append(int(n/i))
  factors.sort()
  return factors

def factor_compare(n,d):
  factors = factors_of(n)
  factor_last_digits = str(d)

  for i in factors:
    string_i = str(i)
    
