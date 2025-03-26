# frozen_string_literal: true

def champernowne_constant
  product = 1
  digits = []

  (1..1_000_000).each do |n|
    digits << n.to_s
  end
  irrational_decimal_fraction = digits.join

  (0..6).each do |n|
    index = 10**n
    product *= irrational_decimal_fraction[index - 1].to_i
  end

  product
end
