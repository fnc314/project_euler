def isPrime(n)

  if n < 2 || (n % 2 == 0 && n != 2)
    return false
  elsif n == 2
    return true
  else
    max = Math.sqrt(n) - 1
    possible_divisors = (3..max).step(2).to_a
    possible_divisors.each do |pd|
      if n % pd == 0
        return false
      end
    end
  end

  # default return statement only reached if n is indeed prime
  return true

end

def primesLessThanN(n)
  # primes = Array.new()
  prime_count = 0
  if n < 2
    return "There are no primes here Gandalf Stormcrow"
  elsif n == 2
    prime_count += 1
  else
    prime_count += 1
    possible_primes = (3..n).step(2).to_a
    possible_primes.each do |pp|
      if isPrime(pp)
        prime_count += 1
      end
    end
  end

  # print primes
  # print "\n"
  # return primes.length
  return prime_count

end

# puts "/\\" * 10
# puts Time.now.to_i
# puts isPrime(10) # false
# puts Time.now.to_i
# puts isPrime(27) # false
# puts isPrime(23) # true
# puts isPrime(17) # true
puts Time.now.to_i
puts isPrime(1324354657098753) # false => 16 digit number in approx. 1s
puts Time.now.to_i
# puts "\\/" * 10
# puts Time.now.to_i
# puts "*" * 10
# puts primesLessThanN(10000)
# puts "*" * 10
# puts Time.now.to_i
