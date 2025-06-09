# frozen_string_literal: true

def triangle_pentagon_hexagonal
  triangle_start = 286

  loop do
    next_triangle = n_triangle(triangle_start)

    unless pentagonal?(next_triangle)
      triangle_start += 1
      next
    end

    unless hexagonal?(next_triangle)
      triangle_start += 1
      next
    end

    return next_triangle
  end
end

def n_triangle(num)
  (num * (num + 1)) / 2
end

def pentagonal?(num)
  n = (1 + Math.sqrt(1 + 24 * num)) / 6
  n == n.to_i
end

def hexagonal?(num)
  n = (1 + Math.sqrt(1 + 8 * num)) / 4
  n == n.to_i
end
