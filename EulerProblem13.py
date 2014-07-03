def ep13():
  total_integer = 0

  with open('EulerProblem13.txt', 'r') as f:
    for line in f:
      num = int(line)
      total_integer += num

  # for string in ten_digit_strings:
  #   number = int(string)
  #   total += number
  #
  return first_ten_digits(total_integer)


def first_ten_digits(total_integer):
  total_string = str(total_integer)
  return int(total_string[0:10])


print ep13()

# CORRECT
# Slightly modified for improved output
