# frozen_string_literal: true

def sub_string_divisibility
  sum = 0
  (0..9).to_a.permutation(10).each do |arr|
    next if arr.first.zero?
    next unless sub_string_divisible?(arr)

    num = arr.join.to_i

    sum += num
  end

  sum
end

def sub_string_divisible?(arr)
  divisors = [2, 3, 5, 7, 11, 13, 17]

  (0...arr.size - 3).all? do |ind|
    num = arr[(ind + 1)..(ind + 3)].join.to_i
    (num % divisors[ind]).zero?
  end
end
