require "minitest/autorun"
require_relative "../project_euler/digits_factorial"

class DigitsFactorialTest < Minitest::Test
  def test_digitd_factorial_returns_expected_result
    expected_result = 40_730 # The sum of all numbers that are equal to the sum of the factorial of their digits
    assert_equal expected_result, digitd_factorial
  end

  def test_digitd_factorial_calculates_and_caches_all_digit_factorials
    result = digitd_factorial
    factorial_cache = {0 => 1, 1 => 1}
    upper_bound, factorial_cache = get_upper_bound(factorial_cache)
    _ = get_sum_of_factorials_of_digits(upper_bound, factorial_cache)

    expected_factorials = {
      0 => 1, 1 => 1, 2 => 2, 3 => 6, 4 => 24,
      5 => 120, 6 => 720, 7 => 5040, 8 => 40_320, 9 => 362_880
    }

    assert_equal expected_factorials, factorial_cache
    assert_equal 40_730, result
  end
end
