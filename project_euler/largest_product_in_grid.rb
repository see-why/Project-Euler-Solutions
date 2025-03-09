# frozen_string_literal: true

def largest_product_in_grid(grid)
  max_product = 0
  rows = grid.length
  cols = grid[0].length

  directions = [
    [[0, 1], [0, 2], [0, 3]], # horizontal
    [[1, 0], [2, 0], [3, 0]], # vertical
    [[1, 1], [2, 2], [3, 3]], # diagonal top left to bottom right
    [[1, -1], [2, -2], [3, -3]] # diagonal top right to bottom left
  ]

  (0...rows).each do |i|
    (0...cols).each do |j|
      directions.each do |direction|
        next unless valid_position?(i, j, direction, rows, cols)

        product = grid[i][j] * direction.reduce(1) do |acc, (di, dj)|
          acc * grid[i + di][j + dj]
        end

        max_product = [max_product, product].max
      end
    end
  end

  max_product
end

def valid_position?(row, column, direction, rows, cols)
  direction.all? do |di, dj|
    (row + di).between?(0, rows - 1) && (column + dj).between?(0, cols - 1)
  end
end
