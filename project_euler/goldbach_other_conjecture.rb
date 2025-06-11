# frozen_string_literal: true

require_relative 'largest_prime_factor'

def goldbach_other_conjecture
  lower_bound = 33

  loop do
    if prime?(lower_bound)
      lower_bound += 2 # odd numbers
      next
    end

    break unless goldbach_conjecture? lower_bound

    lower_bound += 2
  end

  lower_bound
end

def goldbach_conjecture?(num)
  primes = primes_less_than(num)
  primes.any? do |prime_factor|
    n = Math.sqrt((num - prime_factor) / 2)
    n == n.to_i
  end
end

def primes_less_than(num)
  (2...num).to_a.map do |val|
    val if prime?(val)
  end.compact
end
