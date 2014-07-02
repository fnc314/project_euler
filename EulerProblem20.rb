n = (1..100).to_a.inject(1,:*).to_s

m = n.split("").map! { |ele| ele.to_i }

answer = m.inject(0,:+)

puts "*" * 10
puts answer
puts "*" * 10

# CORRECT
