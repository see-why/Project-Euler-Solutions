require "minitest/autorun"
require_relative "../project_euler/counting_sundays"

class CountingSundaysTest < Minitest::Test
  def test_counting_sundays
    assert_equal 171, counting_sundays(1, 1900, 2000)
  end

  def test_counting_sundays_same_year
    assert_equal 0, counting_sundays(1, 1900, 1900)
  end

  def test_counting_sundays_transition_1900_to_1901
    assert_equal 2, counting_sundays(1, 1900, 1901)
  end

  def test_counting_sundays_year_2000_leap_year
    assert_equal 2, counting_sundays(1, 2024, 2024)
  end
end
