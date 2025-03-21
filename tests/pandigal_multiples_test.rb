# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../project_euler/pandigal_multiples'

class PandigalMultiplesTest < Minitest::Test
  def test_pandigal_multiples_single_digit
    assert_equal 918_273_645, pandigal_multiples # +
  end
end
