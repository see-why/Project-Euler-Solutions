require "minitest/autorun"
require_relative "../project_euler/nth_digit_fibonacci_number"

class NthDigitFibonacciNumberTest < Minitest::Test
  def test_nth_digit_fibonacci_number_for_large_n
    result = nth_digit_fibonacci_number(100)
    assert_equal 476, result
  end

  def test_nth_digit_fibonacci_number_for_larger_n
    result = nth_digit_fibonacci_number(1000)
    assert_equal 4782, result
  end
end
