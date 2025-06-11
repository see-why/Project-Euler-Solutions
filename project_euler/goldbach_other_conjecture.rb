# frozen_string_literal: true

require_relative 'largest_prime_factor'

def goldbach_other_conjecture
  upper_limit = 6_000
  lower_bound = 33
  primes = primes_less_than(upper_limit)

  loop do
    if primes.include?(lower_bound)
      lower_bound += 2 # odd numbers
      next
    end

    break unless goldbach_conjecture?(primes, lower_bound)

    lower_bound += 2
  end

  lower_bound
end

def goldbach_conjecture?(primes, num)
  lesser_primes = primes.select { |p| p < num }
  lesser_primes.any? do |prime_factor|
    n = Math.sqrt((num - prime_factor) / 2)
    n == n.to_i
  end
end

def primes_less_than(num)
  prime_set = Set.new
  (2...num).each do |val|
    prime_set.add val if prime?(val)
  end

  prime_set.to_a
end
