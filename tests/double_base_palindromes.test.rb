# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../project_euler/double_base_palindromes'

class DoubleBasePalindromesTest < Minitest::Test
  def test_double_base_palindromes_ten_and_two
    assert_equal 872_187, double_base_palindromes(10, 2)
  end

  def test_double_base_palindromes_ten_and_three
    assert_equal 1_342_501, double_base_palindromes(10, 3)
  end

  def test_double_base_palindromes_eight_and_six
    assert_equal 896_122, double_base_palindromes(8, 6)
  end
end
