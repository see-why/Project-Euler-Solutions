# frozen_string_literal: true

# first two consecutive numbers to have two distinct prime factors are:
# 14 = 2 * 7
# 15 = 3 * 5
# first three consecutive numbers to have three distinct prime factor are:
# 644 = 2**2 * 7 * 23
# 645 = 3 * 5 * 43
# 646 = 2 * 17 * 19
# trying to find the first four consecutive numbers to have four distinct
# prime factors
require 'set'
require_relative '../project_euler/largest_prime_factor'

def distinct_primes_factors(consecutive_size, start)
  result = []
  count = 0
  primes = Hash.new(0)

  loop do
    break if count == consecutive_size

    if prime_factors(start, primes).size == consecutive_size
      result << start
      count += 1
    else
      result = []
      count = 0
    end

    start += 1
  end

  result
end

def prime_factors(num, primes = {})
  result = []

  (2..Math.sqrt(num)).each do |val|
    next unless (num % val).zero?

    result << val if find_or_save(val, primes)
    quotient = (num / val)
    result << quotient if find_or_save(quotient, primes)
  end

  result
end

def find_or_save(num, primes)
  return true if primes.key? num

  if prime? num
    primes[num] += 1
    return true
  end

  false
end
