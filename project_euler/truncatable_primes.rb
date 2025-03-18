# frozen_string_literal: true

require_relative 'largest_prime_factor'

def truncatable_primes
  count = sum = 0
  11.upto(Float::INFINITY) do |num|
    break if count == 11

    next unless prime?(num)
    next unless truncatable_prime?(num)

    count += 1
    sum += num
  end

  sum
end

def truncatable_prime?(num)
  numbers = num.to_s.chars

  (0...numbers.size).each do |i|
    return false unless prime?(numbers[i..].join.to_i)

    return false if i.positive? && !prime?(numbers[0...i].join.to_i)
  end

  true
end
