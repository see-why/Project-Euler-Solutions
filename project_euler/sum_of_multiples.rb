# frozen_string_literal: true

def sum_of_multiples(limit)
  multiples_of_3 = (limit % 3).zero? ? (limit / 3) - 1 : limit / 3
  multiples_of_5 = (limit % 5).zero? ? (limit / 5) - 1 : limit / 5

  sum = 0

  1.upto(multiples_of_3) do |i|
    number = i * 3
    sum += number if number % 5 != 0
  end

  1.upto(multiples_of_5) do |i|
    number = i * 5
    sum += number
  end

  sum
end
