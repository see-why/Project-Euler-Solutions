# frozen_string_literal: true

def integer_right_triangles
  solutions_map = {}
  abc_map = {}
  upper_bound = Math.sqrt(1_000_000).ceil
  upper_bound.ceil.downto(1).each do |c|
    upper_bound.ceil.downto(1).each do |b|
      sum = (b**2) + (c**2)
      a = Math.sqrt(sum)
      next unless (a % 1).zero?
      next if a + b + c > 1_000

      abc_key = [a, b, c].sort.join.to_s
      puts "abc_key: #{abc_key}"
      next if abc_map[abc_key]

      abc_map[abc_key] = [a, b, c]

      solutions_map[a + b + c] = 0 if solutions_map[a + b + c].nil?
      solutions_map[a + b + c] += 1
    end
  end

  solutions_map.key(solutions_map.values.max)
end
