# frozen_string_literal: true

require_relative 'largest_prime_factor'

def nth_prime_number(n)
  return 2 if n == 1

  count = 1

  3.upto(Float::INFINITY) do |i|
    count += 1 if is_prime(i)
    return i if count == n
  end
end
