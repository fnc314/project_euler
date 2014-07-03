def ep6():
  # find 1^2 + 2^2 + ... + 100^2
  sum_of_squares = 0
  for n in range(1,101):
    sum_of_squares += n ** 2

  # find (1 + 2 + ... + 100)^2
  square_of_sums = 0
  sums = 0
  for n in range(1,101):
    sums += n

  square_of_sums = sums ** 2

  answer = square_of_sums - sum_of_squares

  return answer


print ep6()

# CORRECT
