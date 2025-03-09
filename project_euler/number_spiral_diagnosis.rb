# frozen_string_literal: true

def number_spiral_diagnosis(num)
  return 1 if num == 1
  return 0 unless num.odd?

  sum = 1 # Center value
  current = 1

  # For each layer of the spiral
  (2..n).step(2) do |layer_size|
    # Calculate the four corners of current layer
    4.times do
      current += layer_size
      sum += current
    end
  end

  sum
end
