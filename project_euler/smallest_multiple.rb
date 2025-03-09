# frozen_string_literal: true

def gcd(num, num2)
  num, num2 = num2, num % num2 while num2 != 0
  num
end

def lcm(num, num2)
  return 0 if num.zero? || num2.zero?

  (num * num2).abs / gcd(num, num2)
end

def smallest_multiple(num)
  # The smallest multiple is the LCM of all numbers from 1 to n
  # We can calculate this iteratively using the property:
  # LCM(a,b,c) = LCM(LCM(a,b),c)
  result = 1
  (2..num).each do |i|
    result = lcm(result, i)
  end
  result
end
