# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../project_euler/circular_primes'

class CircularPrimesTest < Minitest::Test
  def test_something_with_upper_bound_one_hundred
    assert_equal 13, circular_primes(100)
  end

  def test_something_with_upper_bound_ten
    assert_equal 4, circular_primes(10)
  end

  def test_something_with_upper_bound_one_million
    assert_equal 100, circular_primes(1_000_000)
  end
end
