# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../project_euler/factorial_digit_sum'

class FactorialDigitSumTest < Minitest::Test
  def test_factorial_digit_sum_with_large_number
    assert_equal 648, factorial_digit_sum(100)
  end

  def test_factorial_digit_sum_with_10
    assert_equal 27, factorial_digit_sum(10)
  end

  def test_factorial_digit_sum_with_twenty
    assert_equal 54, factorial_digit_sum(20)
  end
end
