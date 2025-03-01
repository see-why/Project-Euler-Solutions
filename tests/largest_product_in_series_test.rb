require 'minitest/autorun'
require_relative '../largest_product_in_series'

class LargestProductInSeriesTest < Minitest::Test
  def test_largest_product_in_series_with_4_digits
    result = largest_product_in_series(4)
    assert_equal 5832, result[:product]
    assert_equal "9989", result[:sequence]
  end

  def test_largest_product_in_series_with_13_digits
    result = largest_product_in_series(13)
    assert_equal 23514624000, result[:product]
    assert_equal "5576689664895", result[:sequence]
  end

  def test_largest_product_in_series_with_1_digit
    result = largest_product_in_series(1)
    assert_equal 9, result[:product]
    assert_equal "9", result[:sequence]
  end

  def test_largest_product_in_series_with_1000_digits
    result = largest_product_in_series(1000)
    assert_equal 0, result[:product]
    assert_equal "", result[:sequence]
  end
end
