# frozen_string_literal: true

def pandigal_products
  checked = {}
  sum = 0
  (1..9).to_a.permutation(9).to_a.map do |p|
    window = 1
    while window <= 5
      multiplicand = p[0, window].join.to_i
      multiplier = p[window, 5 - window].join.to_i
      product = p[5, p.length].join.to_i

      break if checked[product]

      if multiplicand * multiplier == product
        sum += product
        checked[product] = true
      end
      window += 1
    end
  end
  sum
end
