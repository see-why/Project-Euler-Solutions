def digit_fifth_powers
  powers = (0..9).map { |i| i**5 }
  upper_limt = powers.max * 6
  numbers = [0]

  upper_limt.downto(2) do |num|
    numbers << num if num.digits.sum { |i| powers[i] } == num
  end

  numbers.reduce(:+)
end
