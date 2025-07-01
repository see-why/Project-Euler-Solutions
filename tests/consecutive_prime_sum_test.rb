# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../project_euler/consecutive_prime_sum'

class TestConsecutivePrimeSum < Minitest::Test
  def test_for_sum_up_to_fifty
    assert_equal 41, consecutive_prime_sum(50)
  end

  def test_for_sum_up_to_one_thousand
    assert_equal 953, consecutive_prime_sum(1_000)
  end

  def test_for_sum_up_to_one_million
    assert_equal 997_651, consecutive_prime_sum(1_000_000)
  end
end
