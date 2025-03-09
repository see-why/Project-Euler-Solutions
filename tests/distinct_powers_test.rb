# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../project_euler/distinct_powers'

class DistinctPowersTest < Minitest::Test
  def test_distinct_powers_with_larger_values
    assert_equal 9183, distinct_powers(100, 100)
  end

  def test_distinct_powers_with_large_values
    assert_equal 324, distinct_powers(20, 20)
  end

  def test_distinct_powers_with_small_values
    assert_equal 15, distinct_powers(5, 5)
  end
end
