# frozen_string_literal: true

def pandigal_multiples
  max = 0
  (1..9_999).each do |n|
    is_pandigital, number = pandigital(n)
    max = number if is_pandigital && number > max
  end
  max
end

def pandigital(num)
  multiplier = 1
  digits = num.to_s.chars
  while digits.length < 9
    multiplier += 1
    digits += (num * multiplier).to_s.chars
  end
  [digits.sort == ('1'..'9').to_a, digits.join.to_i]
end

pp pandigal_multiples
