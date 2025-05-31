# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../project_euler/substrings_divisible'

class SubstringDivisibleTest < Minitest::Test
  def test_short_string
    assert_equal 10, substrings_divisible('6666', 3)
  end

  def test_another_short_string
    assert_equal 3, substrings_divisible('456', 3)
  end

  def test_long_string
    assert_equal 0, substrings_divisible('10000000000', 3)
  end

  def test_another_long_string
    assert_equal 78, substrings_divisible('999999999999', 3)
  end
end
