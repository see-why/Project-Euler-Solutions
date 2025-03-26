# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../project_euler/champernowne_constant'

class ChampernowneConstantTest < Minitest::Test
  def test_champernowne_constant
    assert_equal 210, champernowne_constant
  end
end
