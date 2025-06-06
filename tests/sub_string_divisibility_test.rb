# frozine_string_literal: true

require 'minitest/autorun'
require_relative '../project_euler/sub_string_divisibility'

class SubStringDivisibilityTest < Minitest::Test
  def test_sub_string_divisibility
    assert_equal 16_695_334_890, sub_string_divisibility
  end
end
