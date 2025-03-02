require_relative "amicable_numbers"

def non_abundant_numbers
  limit = 28123
  all_numbers = Array.new(limit, false)
  abundant_numbers = []

  12.upto(limit) do |i|
    if i < sum_of_proper_divisors(i)
      abundant_numbers << i
    end
  end

  abundant_numbers.each do |a|
    abundant_numbers.each do |b|
      sum = a + b
      if sum <= limit
        all_numbers[sum] = true
      end
    end
  end

  (1..limit).sum do |n|
    all_numbers[n] ? 0 : n
  end
end

puts non_abundant_numbers
