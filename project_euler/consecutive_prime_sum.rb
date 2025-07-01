# frozen_string_literal: true

# The prime 41
# , can be written as the sum of six consecutive primes:
# 41 = 2 + 3 + 5 + 7 + 11 + 13
# This is the longest sum of consecutive primes that adds to a prime below one-hundred.
# The longest sum of consecutive primes below one-thousand that adds to a prime, contains
# 21 terms, and is equal to 953.
# Which prime, below one-million, can be written as the sum of the most consecutive primes?

def consecutive_prime_sum(lower_bound, upper_bound)
  primes = [2]
  max_primes = 0
  result = lower_bound

  (lower_bound...upper_bound).each do |number|
    primes, is_perfect_sum = primes_less_than(number, primes)
    if is_perfect_sum && primes.size > max_primes
      max_primes = primes.size
      result = number
    end
  end

  result
end

def primes_less_than(number, primes = [])
  sum = primes.sum
  return [primes, true] if sum >= number

  start_prime = primes.last
  increment = 1

  loop do
    next_prime = start_prime + increment

    if prime? next_prime
      primes << next_prime
      sum += next_prime
      return [primes, true] if sum == number
      break if sum >= number
    end
    increment += 1
  end

  [primes, false]
end
