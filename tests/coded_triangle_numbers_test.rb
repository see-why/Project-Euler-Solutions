# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../project_euler/coded_triangle_numbers'

class CodedTriangleNumbers < Minitest::Test
  def test_coded_triangle_numbers
    words = %w[SKY HELLO TRIANGLE WORLD EEE DOG FICA]
    assert_equal 2, coded_triangle_numbers(words)
  end
end
