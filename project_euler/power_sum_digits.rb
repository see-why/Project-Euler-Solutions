# frozen_string_literal: true

def power_sum_digits(num, exp)
  (num**exp).to_s.chars.map(&:to_i).sum
end
