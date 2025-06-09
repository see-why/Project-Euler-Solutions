# frozen_string_literal: true

def triangle_pentagon_hexagonal
  triangle_start = 286
  pentagonal_start = 166
  hexagonal_start = 144

  triangles = []
  pentagonals = []
  hexagonals = []
  common_number = []

  while common_number.empty?
    triangles << n_triangle(triangle_start)
    pentagonals << n_pentagonal(pentagonal_start)
    hexagonals << n_hexagonal(hexagonal_start)

    common_number = triangles & pentagonals & hexagonals
    break unless common_number.empty?

    triangle_start += 1
    pentagonal_start += 1
    hexagonal_start += 1
  end

  common_number.first
end

def n_triangle(num)
  (num * (num + 1)) / 2
end

def pentagonal?(num)
  (num * ((3 * num) - 1)) / 2
end

def hexagonal?(num)
  (num * ((2 * num) - 1))
end
