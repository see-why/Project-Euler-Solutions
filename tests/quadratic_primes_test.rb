# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../project_euler/quadratic_primes'

class QuadraticPrimesTest < Minitest::Test
  def test_quadratic_primes_with_small_limits
    assert_equal(-235, quadratic_primes(50, 50))
  end

  def test_quadratic_primes_with_large_limits
    assert_equal(-59_231, quadratic_primes(1000, 1000))
  end
end
