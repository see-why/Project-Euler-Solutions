# frozen_string_literal: true

def summation_of_primes(num)
  sieve = Array.new(num + 1, true)
  sieve[0] = sieve[1] = false
  p = 2

  while p * p <= num
    (p * p).step(n, p) { |i| sieve[i] = false } if sieve[p]
    p += 1
  end

  sieve.each_index.select { |i| sieve[i] }.sum
end
