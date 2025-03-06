def reciprocal_cycles(limit = 1000)
  max_length = 0
  max_d = 0

  (2..limit).each do |d|
    # Skip numbers that are multiples of 2 or 5
    next if d % 2 == 0 || d % 5 == 0

    # Find cycle length using long division
    remainders = {}
    numerator = 1
    position = 0

    while numerator != 0
      numerator *= 10
      position += 1

      # Check if we've seen this remainder before
      if remainders[numerator]
        cycle_length = position - remainders[numerator]
        if cycle_length > max_length
          max_length = cycle_length
          max_d = d
        end
        break
      end

      remainders[numerator] = position
      numerator %= d
    end
  end

  max_d
end
