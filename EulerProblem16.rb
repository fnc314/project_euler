def ep16
  num = 2 ** 1000

  num_digits_string = num.to_s.split("")

  num_digits_integers = num_digits_string.map! { |ele| ele.to_i }

  sum_of_digits = num_digits_integers.inject(0,:+)

  return sum_of_digits

end

puts ep16

# CORRECT
