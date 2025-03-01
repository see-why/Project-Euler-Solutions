def largest_prime_factor(limit)
  number = 2
  prime = 2
  while number <= limit
    if limit % number == 0
      limit /= number
      prime = is_prime(number) ? number : prime
    end
    number += 1

  end
  prime
end

def is_prime(n)
  if n <= 1
    return false
  end
  (2..Math.sqrt(n)).each do |i|
    if n % i == 0
      return false
    end
  end
  true
end
