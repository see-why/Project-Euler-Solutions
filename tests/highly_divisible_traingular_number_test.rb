# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../project_euler/highly_divisible_traingular_number'

class HighlyDivisibleTraingularNumberTest < Minitest::Test
  def test_highly_divisible_traingular_number_small_divisors
    assert_equal 28, highly_divisible_traingular_number(5)
  end
end

def test_highly_divisible_traingular_number_with_one_divisor
  assert_equal 1, highly_divisible_traingular_number(1)
end

def test_highly_divisible_traingular_number_large_divisors
  assert_equal 76_576_500, highly_divisible_traingular_number(500)
end

def test_highly_divisible_traingular_number_prime_divisors
  assert_equal 630, highly_divisible_traingular_number(11)
end
