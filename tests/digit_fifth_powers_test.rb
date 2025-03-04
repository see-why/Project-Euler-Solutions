require "minitest/autorun"
require_relative "../project_euler/digit_fifth_powers"

class DigitFifthPowersTest < Minitest::Test
  def test_digit_fifth_powers
    assert_equal 443839, digit_fifth_powers
  end
end
