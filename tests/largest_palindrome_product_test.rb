require "minitest/autorun"
require_relative "largest_palindrome_product"

class LargestPalindromeProductTest < Minitest::Test
  def test_single_digit
    assert_equal 9, largest_palindrome_product(1)
  end

  def test_two_digits
    assert_equal 9009, largest_palindrome_product(2)
  end

  def test_three_digits
    assert_equal 906609, largest_palindrome_product(3)
  end

  def test_four_digits
    assert_equal 99000099, largest_palindrome_product(4)
  end
end
