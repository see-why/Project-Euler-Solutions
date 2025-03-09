# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../project_euler/sum_of_multiples'

class SumOfMultiplesTest < Minitest::Test
  def test_sum_of_multiples_below_ten
    assert_equal 23, sum_of_multiples(10)
  end

  def test_sum_of_multiples_below_twenty
    assert_equal 78, sum_of_multiples(20)
  end

  def test_sum_of_multiples_below_fifty
    assert_equal 543, sum_of_multiples(50)
  end

  def test_sum_of_multiples_below_one_hundred
    assert_equal 2318, sum_of_multiples(100)
  end

  def test_sum_of_multiples_below_one_thousand
    assert_equal 233_168, sum_of_multiples(1000)
  end

  def test_sum_of_multiples_below_zero
    assert_equal 0, sum_of_multiples(0)
  end

  def test_sum_of_multiples_below_one
    assert_equal 0, sum_of_multiples(1)
  end
end
