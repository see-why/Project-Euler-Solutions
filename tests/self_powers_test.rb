# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../project_euler/self_powers'

class SelfPowesTest < Minitest::Test
  def test_self_powers_five
    assert_equal 3413, self_powers(5)
  end

  def test_self_powers_ten
    assert_equal 4_050_713_17, self_powers(10)
  end

  def test_self_powers_hundred
    assert_equal 9_027_641_920, self_powers(100)
  end

  def test_self_powers_ten_thousands
    assert_equal 9_110_846_700, self_powers(1000)
  end
end
