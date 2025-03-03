def number_spiral_diagnosis(n)
  return 0 unless n.odd?

  grid = Array.new(n) { Array.new(n, 0) }
  i = j = center = n / 2
  grid[center][center] = value = 1
  right_step = down_step = 1
  left_step = up_step = last_step = 2

  while value < n * n
    1.upto(right_step) do |ind|
      value += 1
      j += 1
      grid[i][j] = value # move right
    end

    1.upto(down_step) do |ind|
      value += 1
      i += 1
      grid[i][j] = value # move down
    end

    1.upto(left_step) do |ind|
      value += 1
      j -= 1
      grid[i][j] = value # move left
    end

    1.upto(up_step) do |ind|
      value += 1
      i -= 1
      grid[i][j] = value # move up
    end

    last_step.times do |ind|
      value += 1
      j += 1
      grid[i][j] = value # move right
    end

    down_step += 2
    left_step += 2
    up_step += 2
    last_step += 2
  end

  # pp grid

  sum = 1
  diagonal_steps = n - center - 1
  1.upto(diagonal_steps) do |ind|
    sum += grid[center - ind][center - ind]
    sum += grid[center + ind][center + ind]
    sum += grid[center - ind][center + ind]
    sum += grid[center + ind][center - ind]
  end

  sum
end
