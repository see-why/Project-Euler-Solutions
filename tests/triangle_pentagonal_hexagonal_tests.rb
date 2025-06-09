# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../project_euler/triangular_pentagonal_hexagonal'

class TrianglePentagonalHexagonalTest < Minitest::Test
  def test_triangle_pentagonal_hexagonal
    assert_equal 1_533_776_805, triangle_pentagon_hexagonal
  end
end
