# frozen_string_literal: true

def factorial_digit_sum(num)
  (1..num).reduce(:*).to_s.chars.map(&:to_i).reduce(:+)
end
