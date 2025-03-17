# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../project_euler/sum_equal_to_max'

class SumEqualToMaxTest < Minitest::Test
  def test_sum_equal_to_max_with_empty_array
    assert_equal false, sum_equal_to_max?([])
  end

  def test_sum_equal_to_max_with_single_element_array
    assert_equal false, sum_equal_to_max?([2, 3, 10])
  end

  def test_sum_equal_to_max_with_multiple_elements_summing_to_max
    arr = [3, 5, -1, 8, 30]
    assert_equal false, sum_equal_to_max?(arr)
  end

  def test_sum_equal_to_max_with_duplicate_numbers
    arr = [3, 5, -1, 8, 24, 3, 5]
    assert_equal true, sum_equal_to_max?(arr)
  end

  def test_sum_equal_to_max_with_more_duplicate_numbers
    arr = [3, 5, -1, 8, 24, 3, 5, 5, 5, 5, 5, 5, 5, 5, 5]
    assert_equal true, sum_equal_to_max?(arr)
  end
end
