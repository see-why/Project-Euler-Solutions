def distinct_powers(a, b)
  result = Set.new
  a.downto(2) do |i|
    b.downto(2) do |j|
      result.add(i.pow(j))
    end
  end
  result.size
end
