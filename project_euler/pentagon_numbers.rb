# frozen_string_literal: true

def pentagon_numbers
  upper_bound = 3_000
  numbers = []

  (1..upper_bound).each do |n|
    numbers << n_pentagon_numbers(n)
  end

  (0...upper_bound).each do |i|
    ((i + 1)...upper_bound).each do |j|
      sum = numbers[i] + numbers[j]
      difference = numbers[j] - numbers[i]
      new_d = (numbers[j] - numbers[i]).abs

      next unless n_pentagon_number?(sum) && n_pentagon_number?(difference)

      return new_d
    end
  end
end

def n_pentagon_numbers(num)
  (num * ((3 * num) - 1)) / 2
end

def n_pentagon_number?(num)
  n = (1 + Math.sqrt(1.0 + 24 * num)) / 6
  n == n.to_i
end
