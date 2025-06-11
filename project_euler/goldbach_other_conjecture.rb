# frozen_string_literal: true

require_relative 'largest_prime_factor'

def goldbach_other_conjecture
  lower_bound = 33

  loop do
    if prime?(lower_bound)
      lower_bound += 1
      next
    end

    break unless goldbach_conjecture?

    lower_bound += 1
  end

  lower_bound
end

def goldbach_conjecture?(num)
  primes = primes_less_than(num)
  primes.any? do |prime_factor|
    puts "prime_factor: #{prime_factor}"
    n = Math.sqrt((num - prime_factor) / 2)
    puts "n: #{n}"
    n == n.to_i
  end
end

def primes_less_than(num)
  (2...num).to_a.map do |val|
    val if prime?(val)
  end.compact
end

pp primes_less_than(12)
pp goldbach_conjecture?(32)
