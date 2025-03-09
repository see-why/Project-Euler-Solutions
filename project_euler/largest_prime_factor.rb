# frozen_string_literal: true

def largest_prime_factor(limit)
  number = 2
  prime = 2
  while number <= limit
    if (limit % number).zero?
      limit /= number
      prime = is_prime(number) ? number : prime
    end
    number += 1

  end
  prime
end

def is_prime(n)
  return false if n <= 1

  (2..Math.sqrt(n)).each do |i|
    return false if (n % i).zero?
  end
  true
end
