# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../project_euler/longest_collatz_sequence'

class LongestCollatzSequenceTest < Minitest::Test
  def test_handles_large_input_limit
    result = longest_collatz_sequence(1_000_000)
    assert_equal 837_799, result
  end

  def test_returns_correct_result_for_known_sequence
    result = longest_collatz_sequence(10)
    assert_equal 9, result
  end

  def test_returns_correct_result_for_another_known_sequence
    result = longest_collatz_sequence(13)
    assert_equal 9, result
  end
end
