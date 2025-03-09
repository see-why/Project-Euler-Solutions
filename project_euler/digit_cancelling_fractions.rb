# frozen_string_literal: true

def digit_cancelling_fraction?(denominator, numerator)
  i_digits = denominator.digits
  j_digits = numerator.digits
  common = (i_digits & j_digits).first
  return false if common.nil?

  i_digits.delete(common)
  j_digits.delete(common)
  return false if i_digits.empty? || j_digits.empty?

  # Use integer multiplication to avoid float comparison
  i_digits.first * numerator == denominator * j_digits.first
end

def find_digit_cancelling_pairs
  pairs = []

  (11...99).each do |i|
    next if (i % 10).zero?

    ((i + 1)...99).each do |j|
      next if (j % 10).zero?

      pairs << [i, j] if digit_cancelling_fraction?(i, j)
    end
  end

  pairs
end

def calculate_product_fraction(pairs)
  numerator = 1
  denominator = 1

  pairs.each do |i, j|
    numerator *= i
    denominator *= j
  end

  numerator.to_f / denominator
end

def digit_cancelling_fractions
  pairs = find_digit_cancelling_pairs
  result = calculate_product_fraction(pairs)
  p result
  result
end
