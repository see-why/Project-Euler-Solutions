# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../project_euler/even_fibonacci_numbers'

class EvenFibonacciNumbersTest < Minitest::Test
  def test_even_fibonacci_numbers_with_limit_10
    assert_equal 10, even_fibonacci_numbers(10)
  end

  def test_even_fibonacci_numbers_with_limit_100
    assert_equal 44, even_fibonacci_numbers(100)
  end

  def test_even_fibonacci_numbers_with_limit_4000000
    assert_equal 4_613_732, even_fibonacci_numbers(4_000_000)
  end

  def test_even_fibonacci_numbers_with_limit_1
    assert_equal 0, even_fibonacci_numbers(1)
  end

  def test_even_fibonacci_numbers_with_limit_2
    assert_equal 0, even_fibonacci_numbers(2)
  end
end
