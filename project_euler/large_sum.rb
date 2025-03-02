def large_sum(numbers)
  total = numbers.reduce(:+)
  total.to_s[0..9].to_i
end
