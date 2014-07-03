def ep13
  total = 0

  File.open('EulerProblem13.txt', 'r') do |file|
    while (line = file.gets)
      total += line.to_i
    end
  end

  return total.to_s[0,10]

end

puts ep13

# CORRECT
