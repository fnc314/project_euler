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
  factor_last_digits = re.compile(str(d))

  for i in factors:
    string_i = str(i)


# First use `expr = re.compile(str(d))` to set up `d` to be the RegEx used when examining factors
# Second use `expr.match(str(i))` to test for existance of `d` in factor
# Third use a dummy variable to keep count and return its final value => Check with provided examples!
