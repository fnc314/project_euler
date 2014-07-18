def factors_of(n):
  factors = [1,n]
  range_max = (n / 2) + 1
  for i in range(2,range_max):
    if n % i == 0:
      factors.append(i)
      factors.append(int(n/i))
  return factors
