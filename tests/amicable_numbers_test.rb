# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../project_euler/amicable_numbers'

class AmicableNumbersTest < Minitest::Test
  def test_same_result_for_n_and_n_plus_one
    n = 220
    result_n = amicable_numbers(n)
    result_n_plus_one = amicable_numbers(n + 1)
    assert_equal result_n, result_n_plus_one, "Expected amicable_numbers(#{n}) to equal amicable_numbers(#{n + 1})"
  end

  def test_sum_of_amicable_numbers_up_to_ten_thousand
    expected_sum = 31_626
    assert_equal expected_sum, amicable_numbers(10_000),
                 "Expected sum of amicable numbers up to 10000 to be #{expected_sum}"
  end

  def test_sum_of_amicable_numbers_up_to_five_thousand
    expected_sum = 8442
    assert_equal expected_sum, amicable_numbers(5_000),
                 "Expected sum of amicable numbers up to 10000 to be #{expected_sum}"
  end

  def test_multiple_pairs_of_amicable_numbers
    expected_sum = 504
    assert_equal expected_sum, amicable_numbers(300), "Expected sum of amicable numbers up to 300 to be #{expected_sum}"
  end
end
