# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../project_euler/consecutive_prime_sum'

class TestConsecutivePrimeSum < Minitest::Test
  def test_for_sum_up_to_fifty
    assert_equal 41, consecutive_prime_sum(1, 50)
  end
end
