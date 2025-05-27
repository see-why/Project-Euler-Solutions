# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../project_euler/largest_pandigital_prime'

class LargestPandigitalPrime < Minitest::Test
  def test_largest_pandigital_prime
    assert_equal 7_652_413, largest_pandigital_prime
  end
end
