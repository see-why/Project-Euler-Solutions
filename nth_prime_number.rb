require_relative 'largest_prime_factor.rb'

def nth_prime_number(n)
  if n == 1
    return 2
  end
  count = 1

  3.upto(Float::INFINITY) do |i|
    count += 1 if is_prime(i)
    return i if count == n
  end
end
