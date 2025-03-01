require 'minitest/autorun'
require_relative 'smallest_multiple'

class SmallestMultipleTest < Minitest::Test
  def test_smallest_multiple_of_1
    assert_equal 1, smallest_multiple(1)
  end

  def test_smallest_multiple_of_2
    assert_equal 2, smallest_multiple(2)
  end

  def test_smallest_multiple_of_3
    assert_equal 6, smallest_multiple(3)
  end

  def test_smallest_multiple_of_4
    assert_equal 12, smallest_multiple(4)
  end

  def test_smallest_multiple_of_5
    assert_equal 60, smallest_multiple(5)
  end

  def test_smallest_multiple_of_6
    assert_equal 60, smallest_multiple(6)
  end

  def test_smallest_multiple_of_10
    assert_equal 2520, smallest_multiple(10)
  end

  def test_smallest_multiple_of_20
    assert_equal 232792560, smallest_multiple(20)
  end
end
