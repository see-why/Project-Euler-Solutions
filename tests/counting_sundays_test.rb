require "minitest/autorun"
require_relative "../project_euler/counting_sundays"

class CountingSundaysTest < Minitest::Test
  def test_counting_sundays
    assert_equal 171, counting_sundays
  end
end
