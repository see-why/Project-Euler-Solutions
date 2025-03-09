# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../project_euler/count_sums'

class CountSumsTest < Minitest::Test
  def test_count_sums_with_multiple_ways
    target = 5
    coins = [1, 2, 5]
    assert_equal 4, count_sums(target, coins)
  end

  def test_count_sums_with_multiple_ways_for_large_target
    target = 200
    coins = [1, 2, 5, 10, 20, 50, 100, 200]
    assert_equal 73_682, count_sums(target, coins)
  end
end
