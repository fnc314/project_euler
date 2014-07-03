def collatz(integer)
  collatz_sequence = []
  collatz_sequence.push(integer)

  while integer != 1 do

    if integer % 2 == 0
      collatz(integer/2)
    else
      collatz((3 * integer) + 1)
    end
    
  end

  return collatz_sequence.length
end

def ep14
  i = 2
  answer = {}
  while i < 15 do
    answer[i] = collatz(i)
    i += 1
  end

  return answer

end


puts ep14
