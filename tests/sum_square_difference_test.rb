require "minitest/autorun"
require_relative "../project_euler/sum_square_difference"

class SumSquareDifferenceTest < Minitest::Test
  def test_sum_square_difference
    assert_equal 2640, sum_square_difference(10)
    assert_equal 0, sum_square_difference(1)
    assert_equal 170, sum_square_difference(5)
    assert_equal 25164150, sum_square_difference(100)
  end
end
