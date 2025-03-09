# frozen_string_literal: true

def maximum_path_sum(triangle)
  # Create a copy of the triangle to avoid modifying the input
  dp = triangle.map(&:dup)

  # Start from the second-to-last row and work up
  (triangle.size - 2).downto(0) do |row|
    (0..row).each do |col|
      # For each position, choose the maximum possible sum including this position
      dp[row][col] += [dp[row + 1][col], dp[row + 1][col + 1]].max
    end
  end

  # The top element now contains the maximum path sum
  dp[0][0]
end
