def special_pythagorean_triplet(n)
  # For any Pythagorean triplet, a < b < c
  # Also, a < n/3 because a + b + c = n and a < b < c
  # We can use Euclid's formula to generate triplets more efficiently
  max_a = n / 3
  
  (1..max_a).each do |a|
    # Using the formula: a² + b² = c²
    # And a + b + c = n
    # We can derive: b = (n² - 2an)/(2(n-a))
    
    # Calculate b using the quadratic formula
    b = (n * (n - 2 * a)) / (2 * (n - a))
    
    # Skip if b is not an integer or if b <= a
    next unless b.is_a?(Integer) && b > a
    
    # Calculate c
    c = n - a - b
    
    # Verify this is a Pythagorean triplet
    if (a * a + b * b) == (c * c)
      return a * b * c
    end
  end
  
  nil
end

