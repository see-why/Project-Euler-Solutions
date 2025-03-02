def power_sum_digits(n, m)
  exp = n**m
  exp.to_s.chars.map(&:to_i).sum
end
