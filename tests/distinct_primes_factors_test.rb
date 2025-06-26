# frozen_string_literal: true

# frozon_string_literal: true

require 'minitest/autorun'
require_relative '../project_euler/distinct_primes_factors'

class DistinctPrimesFactorsTest < Minitest::Test
  def test_two_consecutive_numbers
    assert_equal [14, 15], distinct_primes_factors(2, 10)
  end

  def test_three_consecutive_numbers
    assert_equal [644, 645, 646], distinct_primes_factors(3, 600)
  end

  def test_four_consecutive_numbers
    assert_equal [134_043, 134_044, 134_045, 134_046], distinct_primes_factors(4, 100_000)
  end
end
