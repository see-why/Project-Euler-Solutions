# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../project_euler/power_sum_digits'

class PowerSumDigitsTest < Minitest::Test
  def test_power_sum_digits_with_large_exponent
    result = power_sum_digits(2, 15)
    assert_equal 26, result
  end

  def test_power_sum_digits_with_another_large_exponent
    result = power_sum_digits(2, 1000)
    assert_equal 1366, result
  end
end
