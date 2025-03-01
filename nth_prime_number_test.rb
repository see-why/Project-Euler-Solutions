require 'minitest/autorun'
require_relative 'nth_prime_number'

class NthPrimeNumberTest < Minitest::Test
  def test_first_prime
    assert_equal 2, nth_prime_number(1)
  end

  def test_second_prime
    assert_equal 3, nth_prime_number(2)
  end

  def test_third_prime
    assert_equal 104729, nth_prime_number(10000)
  end

  def test_fourth_prime
    assert_equal 104743, nth_prime_number(10001)
  end

  def test_fifth_prime
    assert_equal 11, nth_prime_number(5)
  end

end
