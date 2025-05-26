# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../project_euler/large_sum'

class LargeSumTest < Minitest::Test
  def test_one_million
    assert_equal 1, large_sum([1, 0, 0, 0, 0, 0, 0, 0])
  end

  def test_large_array
    assert_equal 12_440, large_sum([1, 1, 1, 1, 1, 11, 1, 12, 23, 24, 12_345, 19])
  end
end
