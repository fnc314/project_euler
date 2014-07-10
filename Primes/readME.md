# The Primes

The Prime Numbers are the building blocks to the Natural Numbers, not unlike how the Natural Numbers (and their additive inverses) build the Integers, the Integers build the Rationals, the Rationals (and their limits) build the Reals, and the Reals (along with all their polynomial solutions) give way to the all encompassing Complex Numbers.  They are a natural curiosity.

There are many algorithms developed for generating and counting primes below a given limit.  Also, efficient methods to determine the primality of a number are highly sought after.  The most effective and resource preserving means are a combination of heuristic and deterministic methods; first determining if a number has a high probability of being prime then performing the necessary primality tests.

This sub-repository (a derivative of my [Project Euler repository](https://github.com/fnc314/project_euler)) includes the various files I have dedicated to experimenting with prime numbers and effecient algorithms for their manipulation/calculation.

## Current Techniques

Currently it is possible to use Python libraries like [SymPy](http://www.sympy.org/) to generate a [Sieve of Eratosthenes](http://www.wikipedia.org/wiki/Sieve_of_Eratosthenes) to an arbitrary length.  This will generate a grouping of primes and can be useful for determining the primality of significantly larger numbers.
