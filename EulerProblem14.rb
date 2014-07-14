# n => n/2 (n even)
# n => 3n + 1 (n odd)

def collatz_sequence(arr=[])
  # arr is an array whose sole element is the first term of the sequence
  # the function will continuously add terms to this array (until arriving at 1)
  # when 1 is computed the function will return the array

  integer = arr.last
  if integer == 1
    return arr
  end

  if integer % 2 == 0
    integer = integer / 2
    arr.push(integer)
    collatz_sequence(arr)
  else
    integer = (3 * integer) + 1
    arr.push(integer)
    collatz_sequence(arr)
  end

end

# print collatz_sequence([14000])

def ep14
  collatz_collection = {}
  (2...1000000).each do |i|
    collatz_collection[i] = collatz_sequence([i]).length
  end

  return collatz_collection.key(collatz_collection.values.max)
end

puts ep14

# CORRECT
