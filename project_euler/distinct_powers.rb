def distinct_powers(a, b)
  result = Set.new
  2.upto(a) do |i|
    2.upto(b) do |j|
      result << i**j
    end
  end
  result.size
end
