require "minitest/autorun"
require_relative "../project_euler/reciprocal_cycles"

class ReciprocalCyclesTest < Minitest::Test
  def test_small_numbers
    assert_equal 7, reciprocal_cycles(10)
  end

  def test_full_problem
    assert_equal 983, reciprocal_cycles(1000)
  end
end
