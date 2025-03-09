# frozen_string_literal: true

require_relative 'amicable_numbers'

def non_abundant_numbers
  limit = 28_123
  all_numbers = Array.new(limit, false)
  abundant_numbers = []

  12.upto(limit) do |i|
    abundant_numbers << i if i < sum_of_proper_divisors(i)
  end

  abundant_numbers.each do |a|
    abundant_numbers.each do |b|
      sum = a + b
      all_numbers[sum] = true if sum <= limit
    end
  end

  (1..limit).sum do |n|
    all_numbers[n] ? 0 : n
  end
end
