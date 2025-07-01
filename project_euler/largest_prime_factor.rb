# frozen_string_literal: true

def largest_prime_factor(limit)
  number = 2
  prime = 2
  while number <= limit
    if (limit % number).zero?
      limit /= number
      prime = prime?(number) ? number : prime
    end
    number += 1

  end
  prime
end

def prime?(num)
  return false if num <= 1

  (2..Math.sqrt(num)).none? do |i|
    (num % i).zero?
  end
end
