# frozen_string_literal: true

require_relative '../project_euler/largest_prime_factor'
require 'prime'

# The prime 41
# , can be written as the sum of six consecutive primes:
# 41 = 2 + 3 + 5 + 7 + 11 + 13
# This is the longest sum of consecutive primes that adds to a prime below one-hundred.
# The longest sum of consecutive primes below one-thousand that adds to a prime, contains
# 21 terms, and is equal to 953.
# Which prime, below one-million, can be written as the sum of the most consecutive primes?

def consecutive_prime_sum(upper_bound)
  max_primes = 0
  sum = 0
  result = 0

  all_primes = Prime.each(upper_bound).to_a # primes_less_than(upper_bound)
  primes_set = all_primes.to_set
  prefix_sums = [0]
  all_primes.each { |num| prefix_sums << prefix_sums.last + num }

  all_primes.each_with_index do |_, i|
    ((i + max_primes)...all_primes.size).each do |j|
      sum = prefix_sums[j + 1] - prefix_sums[i]
      break if sum >= upper_bound

      if primes_set.include?(sum)
        result = sum
        max_primes = j - i + 1
      end
    end
  end

  result
end

def primes_less_than(number)
  (2...number).select do |num|
    prime? num
  end
end
