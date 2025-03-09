# frozen_string_literal: true

def factorial_digit_sum(n)
  (1..n).reduce(:*).to_s.chars.map(&:to_i).reduce(:+)
end
