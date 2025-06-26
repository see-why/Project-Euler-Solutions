# frozen_string_literal: true

require_relative 'largest_prime_factor'

def circular_primes(upper_bound)
  circular_primes_below_hundred = [2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, 97]
  return circular_primes_below_hundred.size if upper_bound == 100

  return circular_primes_below_hundred.select { |i| i < upper_bound }.size if upper_bound < 100

  100.upto(upper_bound).select { |i| circular_prime?(i) }.size + circular_primes_below_hundred.size
end

def circular_prime?(num)
  digits = num.digits
  digits.size.times do
    digits.unshift(digits.pop)
    return false unless prime? digits.join.to_i
  end
  true
end
