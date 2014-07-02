require 'bigdecimal'
require 'bigdecimal/math'

include BigMath



n = (1..100).to_a

sums = []

n.each do |num|
  x = sqrt(BigDecimal.new(num),100)

  # puts "*" * 10
  # puts num
  # puts x
  # puts Math.sqrt(num)
  # puts "*" * 10

  if x != Math.sqrt(num)
    y = x.split[1] # Useful feature to extract components of BigDecimal object
    z = y[0,100] # Ensures capture of 100 decimal digits exactly
    sum = z.split("").map! { |e| e.to_i }.inject(0,:+) # Calculate sum of decimal digits
    sums.push(sum) # Log sum
  end
end

answer = BigDecimal.new('0')

sums.each do |sum|
  answer += sum
end

puts answer.to_i

# CORRECT
