require 'minitest/autorun'
require_relative '../project_euler/summation_of_primes'
require_relative '../project_euler/largest_prime_factor'

class SummationOfPrimesTest < Minitest::Test
  def test_summation_of_primes
    assert_equal 17, summation_of_primes(10)
    assert_equal 2, summation_of_primes(2)
    assert_equal 5, summation_of_primes(3)
    assert_equal 10, summation_of_primes(5)
    assert_equal 142913828922, summation_of_primes(2_000_000)
  end
end
