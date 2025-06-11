# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../project_euler/goldbach_other_conjecture'

class GoldBachsOtherConjectureTest < Minitest::Test
  def test_goldbach_other_conjecture
    assert_equal 5_777, goldbach_other_conjecture
  end
end
