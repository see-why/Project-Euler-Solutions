# frozen_string_literal: true

require_relative 'largest_prime_factor'

def quadratic_primes(a_limit, b_limit)
  max_primes = 0
  max_coefficients = [0, 0]
  primes_cache = {}

  b_primes = (-b_limit).upto(b_limit).select { |n| prime?(n) }

  (-a_limit + 1).upto(a_limit - 1) do |a|
    b_primes.each do |b|
      next if b.zero? || a.zero?

      n = count_consecutive_primes(a, b, primes_cache)

      if n > max_primes
        max_primes = n
        max_coefficients = [a, b]
      end
    end
  end

  max_coefficients.reduce(:*)
end

def count_consecutive_primes(num, prime, primes_cache)
  n = 0
  loop do
    number = n**2 + (num * n) + prime
    break if number < 2

    is_prime = primes_cache[number] ||= prime?(number)
    break unless is_prime

    n += 1
  end
  n
end
