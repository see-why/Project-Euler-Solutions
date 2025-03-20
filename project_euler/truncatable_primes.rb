# frozen_string_literal: true

require_relative 'largest_prime_factor'

# first 11 truncatable primes are 23, 37, 53, 73, 313, 317, 373, 797, 3137, 3797, 739397
def truncatable_primes
  is_prime_map = {}
  count = sum = 0
  11.upto(Float::INFINITY) do |num|
    break if count == 11

    is_prime_map[num] = prime?(num) if is_prime_map[num].nil?

    next unless is_prime_map[num]
    next unless truncatable_prime?(num)

    count += 1
    sum += num
  end

  sum
end

def truncatable_prime?(num)
  is_prime_map = {}
  numbers = num.to_s.chars

  (0...numbers.size).each do |i|
    left = numbers[i..].join.to_i
    is_prime_map[left] = prime?(left) if is_prime_map[left].nil?

    return false unless is_prime_map[left]

    next if i.zero?

    right = numbers[0...i].join.to_i
    is_prime_map[right] = prime?(right) if is_prime_map[right].nil?
    return false unless prime?(right)
  end

  true
end
