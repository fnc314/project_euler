from sympy.ntheory import primefactors

n = input("Enter Number: ")

factors = primefactors(n)

print max(factors)

# CORRECT
# Credit: Sympy
