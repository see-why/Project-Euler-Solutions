# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../project_euler/number_letter_counts'

class NumberLetterCountsTest < Minitest::Test
  def test_number_letter_counts_single_digit
    assert_equal 19, number_letter_counts(5)
  end

  def test_number_letter_counts_double_digit
    assert_equal 112, number_letter_counts(20)
  end

  def test_number_letter_counts_triple_digit
    assert_equal 864, number_letter_counts(100)
  end

  def test_number_letter_counts_for_one_thousand
    assert_equal 21_124, number_letter_counts(1000)
  end
end
