# frozen_string_literal: true

# The series, 1¹ + 2² + ... + nⁿ
# return the last 10 digits where n = 1000
def last_ten_digits(number)
  number_in_string = number.to_s
  return number.to_s.split('').slice(-10..-1).join('').to_i if number_in_string.size > 10

  number
end

def self_powers(upper_bound)
  sum_of_squares = (1..upper_bound).sum do |num|
    num**num
  end

  last_ten_digits(sum_of_squares)
end
