def ep14
  i = 2
  answer = {}
  while i < 1000000 do
    answer[i] = collatz(i)
    i += 1
  end

  return answer

end


def collatz(integer)
  collatz_sequence = []
  collatz_sequence.push(integer)

  if integer % 2 == 0
    i = (integer/2)
    collatz_sequence.push(i)
    collatz(i)
  else
    i = (3 * integer) + 1
    collatz_sequence.push(i)
    collatz(i)
  end

  return collatz_sequence.length
end

puts ep14
