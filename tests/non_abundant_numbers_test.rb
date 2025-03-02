require "minitest/autorun"
require_relative "../project_euler/non_abundant_numbers"

class NonAbundantNumbersTest < Minitest::Test
  def test_non_abundant_numbers_edge_cases
    result = non_abundant_numbers
    assert_equal 4179871, result, "Result should be 4179871"
  end
end
