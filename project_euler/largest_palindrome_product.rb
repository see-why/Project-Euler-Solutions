# frozen_string_literal: true

def largest_palindrome_product(num)
  start = num == 1 ? 1 : 10**(num - 1)
  last = num == 1 ? 9 : 10**num - 1
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
