# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../project_euler/number_spiral_diagnosis'

class NumberSpiralDiagnosisTest < Minitest::Test
  def test_number_spiral_diagnosis_with_5x5_grid
    assert_equal 101, number_spiral_diagnosis(5)
  end

  def test_number_spiral_diagnosis_with_11X11_grid
    assert_equal 961, number_spiral_diagnosis(11)
  end

  def test_number_spiral_diagnosis_with_1001X1001_grid
    assert_equal 669_171_001, number_spiral_diagnosis(1001)
  end
end
