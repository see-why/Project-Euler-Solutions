# frozen_string_literal: true

def integer_right_triangles(upper_bound = 1000)
  solutions_map = {}

  (1..upper_bound / 3).each do |c|
    (c..upper_bound / 2).each do |b|
      sum = (b**2) + (c**2)
      a = Math.sqrt(sum)
      next unless (a % 1).zero?
      next if a + b + c > 1_000

      solutions_map[a + b + c] = 0 if solutions_map[a + b + c].nil?
      solutions_map[a + b + c] += 1
    end
  end

  solutions_map.key(solutions_map.values.max)
end
