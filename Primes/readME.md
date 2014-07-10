# The Primes

The Prime Numbers are the building blocks to the Natural Numbers, not unlike how the Natural Numbers (and their additive inverses) build the Integers, the Integers build the Rationals, the Rationals (and their limits) build the Reals, and the Reals (along with all their polynomial solutions) give way to the all encompassing Complex Numbers.  They are a natural curiosity.

There are many algorithms developed for generating and counting primes below a given limit.  Also, efficient methods to determine the primality of a number are highly sought after.  The most effective and resource preserving means are a combination of heuristic and deterministic methods; first determining if a number has a high probability of being prime then performing the necessary primality tests.

This sub-repository (a derivative of my [Project Euler repository](https://github.com/fnc314/project_euler)) includes the various files I have dedicated to experimenting with prime numbers and effecient algorithms for their manipulation/calculation.

## Current Techniques

Currently it is possible to use Python libraries like [SymPy](http://www.sympy.org/) to generate a [Sieve of Eratosthenes](http://www.wikipedia.org/wiki/Sieve_of_Eratosthenes) to an arbitrary length.  This will generate a grouping of primes and can be useful for determining the primality of significantly larger numbers.

### Ruby

The file `primeNumbers.rb` contains two methods:

1) The first method `isPrime(n)` iterates through all integers between `3` and `Math.sqrt(n) + 1` and tests the divisibilty of `n` by these integers.  To improve effeciency and to reduce the number of test cases, the method steps through the range by a factor of 2 (skipping all even entries)

```ruby
max = Math.sqrt(n) + 1
(3..max).step(2)
```

2) The second method `primesLessThanN(n)` is the inspiration for the prime number work.  The method calls on `isPrime(n)` on all odd numbers greater than or equal to `3` up to and including `n` itself.  Each element is tested for primality and a counter (`prime_count`) increases for every prime found.  The method returns the final value of `prime_count`.

As `primeNumbers.rb` runs today (Thursday July 10, 2014), the script can effeciently test primality for numbers up to 20 digits in length in less than 1s.  The goal will be to maximize the functionality as much as possible (maybe by incorporating a hard-coded preset collection of primes from which to start and with which to limit the necessary computations for even larger input values).  As always, I plan on creating ports in other languages of the same functionalities found here.
