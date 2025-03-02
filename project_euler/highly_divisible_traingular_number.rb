def highly_divisible_traingular_number(divisors)
  n = 1
  triangle_number = 1
  divisor_count = 1

  loop do
    divisor_count = divisor_count(triangle_number)
    return triangle_number if divisor_count > divisors
    n += 1
    triangle_number += n
  end

  triangle_number
end

def divisor_count(n)
  return 1 if n == 1

  # counting 1 and the number itself
  count = 2

  (2..Math.sqrt(n).to_i).each do |i|
    if n % i == 0
      count += 2
      count -= 1 if i * i == n
    end
  end

  count
end
