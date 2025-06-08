# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../project_euler/pentagon_numbers'

class PentagonNumbersTest < Minitest::Test
  def test_pentagon_numbers
    assert_equal 5_482_660, pentagon_numbers
  end
end
