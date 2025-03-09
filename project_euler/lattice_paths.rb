# frozen_string_literal: true

def lattice_paths(n)
  # paths from [0,0] to [n,n]
  grid = Array.new(n + 1) { Array.new(n + 1, 0) }

  n.downto(0) do |i|
    grid[i][0] = 1
    grid[0][i] = 1
  end

  (1..n).each do |i|
    (1..n).each do |j|
      grid[i][j] = grid[i - 1][j] + grid[i][j - 1]
    end
  end

  grid[n][n]
end
