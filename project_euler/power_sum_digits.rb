# frozen_string_literal: true

def power_sum_digits(n, m)
  (n**m).to_s.chars.map(&:to_i).sum
end
