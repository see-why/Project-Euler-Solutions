# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../project_euler/truncatable_primes'

class TruncatablePrimesTest < Minitest::Test
  def test_truncatable_primes_sum
    assert_equal 748_317, truncatable_primes
  end

  def test_truncatable_primes_sum_from_three_hundred_and_seventy_nine
    assert_equal 748_317, truncatable_primes(3797)
  end
end
