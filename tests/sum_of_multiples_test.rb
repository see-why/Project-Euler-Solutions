require "minitest/autorun"
require_relative "sum_of_multiples"

class SumOfMultiplesTest < Minitest::Test
  def test_sum_of_multiples_below_10
    assert_equal 23, sum_of_multiples(10)
  end

  def test_sum_of_multiples_below_20
    assert_equal 78, sum_of_multiples(20)
  end

  def test_sum_of_multiples_below_50
    assert_equal 543, sum_of_multiples(50)
  end

  def test_sum_of_multiples_below_100
    assert_equal 2318, sum_of_multiples(100)
  end

  def test_sum_of_multiples_below_1000
    assert_equal 233168, sum_of_multiples(1000)
  end

  def test_sum_of_multiples_below_0
    assert_equal 0, sum_of_multiples(0)
  end

  def test_sum_of_multiples_below_1
    assert_equal 0, sum_of_multiples(1)
  end
end
