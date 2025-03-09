# frozen_string_literal: true

def special_pythagorean_triplet(num)
  # For any Pythagorean triplet, a < b < c
  # Also, a < n/3 because a + b + c = n and a < b < c
  # We can use Euclid's formula to generate triplets more efficiently
  max_a = num / 3

  (1..max_a).each do |a|
    # Using the formula: a² + b² = c²
    # And a + b + c = n
    # We canumderive: b = (n² - 2an)/(2(n-a))

    # Calculate b using the quadratic formula
    b = (num * (num - 2 * a)) / (2 * (num - a))

    # Skip if b is not an integer or if b <= a
    next unless b.is_a?(Integer) && b > a

    # Calculate c
    c = num - a - b

    # Verify this is a Pythagorean triplet
    return a * b * c if (a * a + b * b) == (c * c)
  end

  nil
end
