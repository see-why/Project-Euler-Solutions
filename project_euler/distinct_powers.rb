# frozen_string_literal: true

def distinct_powers(num, exp)
  result = Set.new
  num.downto(2) do |i|
    exp.downto(2) do |j|
      result.add(i.pow(j))
    end
  end
  result.size
end
