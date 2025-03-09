# frozen_string_literal: true

def gcd(a, b)
  a, b = b, a % b while b != 0
  a
end

def lcm(a, b)
  return 0 if a.zero? || b.zero?

  (a * b).abs / gcd(a, b)
end

def smallest_multiple(n)
  # The smallest multiple is the LCM of all numbers from 1 to n
  # We can calculate this iteratively using the property:
  # LCM(a,b,c) = LCM(LCM(a,b),c)
  result = 1
  (2..n).each do |i|
    result = lcm(result, i)
  end
  result
end
