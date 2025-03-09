# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../project_euler/smallest_multiple'

class SmallestMultipleTest < Minitest::Test
  def test_smallest_multiple_of_one
    assert_equal 1, smallest_multiple(1)
  end

  def test_smallest_multiple_of_two
    assert_equal 2, smallest_multiple(2)
  end

  def test_smallest_multiple_of_three
    assert_equal 6, smallest_multiple(3)
  end

  def test_smallest_multiple_of_four
    assert_equal 12, smallest_multiple(4)
  end

  def test_smallest_multiple_of_five
    assert_equal 60, smallest_multiple(5)
  end

  def test_smallest_multiple_of_six
    assert_equal 60, smallest_multiple(6)
  end

  def test_smallest_multiple_of_ten
    assert_equal 2520, smallest_multiple(10)
  end

  def test_smallest_multiple_of_twenty
    assert_equal 232_792_560, smallest_multiple(20)
  end
end
