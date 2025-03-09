# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../project_euler/even_fibonacci_numbers'

class EvenFibonacciNumbersTest < Minitest::Test
  def test_even_fibonacci_numbers_with_limit_ten
    assert_equal 10, even_fibonacci_numbers(10)
  end

  def test_even_fibonacci_numbers_with_limit_one_hundred
    assert_equal 44, even_fibonacci_numbers(100)
  end

  def test_even_fibonacci_numbers_with_limit_four_million
    assert_equal 4_613_732, even_fibonacci_numbers(4_000_000)
  end

  def test_even_fibonacci_numbers_with_limit_one
    assert_equal 0, even_fibonacci_numbers(1)
  end

  def test_even_fibonacci_numbers_with_limit_two
    assert_equal 0, even_fibonacci_numbers(2)
  end
end
