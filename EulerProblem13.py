def ep13():
  total = 0

  with open('EulerProblem13.txt', 'r') as f:
    for line in f:
      num = int(line)
      total += num

  # for string in ten_digit_strings:
  #   number = int(string)
  #   total += number
  #
  return total

print ep13()

# CORRECT
