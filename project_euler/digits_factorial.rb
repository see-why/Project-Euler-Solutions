# frozen_string_literal: true

def digitd_factorial
  factorial_cache = { 0 => 1, 1 => 1 }
  upper_bound, factorial_cache = get_upper_bound(factorial_cache)
  arr = get_sum_of_factorials_of_digits(upper_bound, factorial_cache)
  arr.reduce(:+)
end

def factorial(num)
  return 1 if num.zero?

  (1..num).reduce(:*)
end

def get_sum_of_factorials_of_digits(upper_bound, factorial_cache)
  arr = []
  10.upto(upper_bound) do |i|
    sum = 0
    i.digits.each do |d|
      factorial_cache[d] = factorial(d) if factorial_cache[d].nil?
      sum += factorial_cache[d]
    end

    arr << i if sum == i
  end

  arr
end

def get_upper_bound(factorial_cache)
  factorial_cache[9] = factorial(9) if factorial_cache[9].nil?
  upper_bound = 9 * factorial_cache[9]
  [upper_bound, factorial_cache]
end
