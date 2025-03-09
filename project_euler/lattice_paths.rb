# frozen_string_literal: true

def lattice_paths(num)
  # paths from [0,0] to [n,n]
  grid = Array.new(num + 1) { Array.new(num + 1, 0) }

  n.downto(0) do |i|
    grid[i][0] = 1
    grid[0][i] = 1
  end

  (1..num).each do |i|
    (1..num).each do |j|
      grid[i][j] = grid[i - 1][j] + grid[i][j - 1]
    end
  end

  grid[n][n]
end
