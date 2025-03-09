# frozen_string_literal: true

def nth_digit_fibonacci_number(num)
  a = 1
  b = 1
  count = 2
  loop do
    a, b = b, a + b
    break if a.to_s.size >= num

    count += 1
  end
  count
end
