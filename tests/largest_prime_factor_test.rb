require 'minitest/autorun'
require_relative '../largest_prime_factor'

class LargestPrimeNumberTest < Minitest::Test
  def test_largest_prime_factor
    assert_equal 5, largest_prime_factor(10)
    assert_equal 7, largest_prime_factor(14)
    assert_equal 13, largest_prime_factor(13)
    assert_equal 29, largest_prime_factor(29)
    assert_equal 5, largest_prime_factor(30)
  end

  def test_largest_prime_factor_with_non_prime
    assert_equal 3, largest_prime_factor(9)
    assert_equal 5, largest_prime_factor(25)
  end

  def test_largest_prime_factor_with_large_number
    assert_equal 6857, largest_prime_factor(600851475143)
    assert_equal 89, largest_prime_factor(178)
  end
end
