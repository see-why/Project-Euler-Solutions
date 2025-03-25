# frozen_string_literal: true

def integer_right_triangles(upper_bound = 1000)
  perimeter_count = {}

  (1..upper_bound / 3).each do |c|
    (c..upper_bound / 2).each do |b|
      sum = (b**2) + (c**2)
      a = Math.sqrt(sum)
      next unless (a % 1).zero?
      next if a + b + c > upper_bound

      perimeter_count[a + b + c] = 0 if perimeter_count[a + b + c].nil?
      perimeter_count[a + b + c] += 1
    end
  end

  perimeter_count.key(perimeter_count.values.max)
end
