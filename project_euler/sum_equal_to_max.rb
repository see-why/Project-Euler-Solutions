# frozen_string_literal: true

def sum_equal_to_max?(arr)
  sorted_array = arr.sort
  max = sorted_array.pop

  sums = Set.new([0])

  sorted_array.each do |num|
    new_sum = Set.new([num])
    sums.each do |sum|
      return true if sum + num == max

      new_sum.add(sum + num)
    end

    sums.merge(new_sum)
  end

  false
end
