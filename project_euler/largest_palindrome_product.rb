def largest_palindrome_product(n)
  start = n == 1 ? 1 : 10**(n - 1)
  last = n == 1 ? 9 : 10**n - 1
  max_palindrome = 0
  last.downto(start) do |i|
    break if i * last < max_palindrome
    i.downto(start) do |j|
      product = i * j

      break if product < max_palindrome
      palindrome = product.to_s == product.to_s.reverse
      max_palindrome = product if palindrome && product > max_palindrome
    end
  end
  max_palindrome
end
