# frozen_string_literal: true

def count_sums(target, coins)
  ways = Array.new(target + 1, 0)
  ways[0] = 1

  coins.each do |coin|
    (coin..target).each do |amount|
      ways[amount] += ways[amount - coin]
    end
  end

  ways[target]
end
