def even_fibonacci_numbers(limit)
  sum = 0
  a = 1
  b = 2
  while b < limit
    sum += b if b.even?
    a, b = b, a + b
  end
  sum
end
