def ep14():
  answer = {}
  for i in range(2,16):
    answer[i] = collatz(i)

  return answer




def collatz(integer):
  sequence = []
  sequence.append(integer)

  while integer != 1:
    if integer % 2 == 0:
      collatz(integer/2)
    else:
      collatz((3*integer)+1)

  return len(sequence)


print ep14()
