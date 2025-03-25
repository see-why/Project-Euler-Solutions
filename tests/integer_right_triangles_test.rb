# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../project_euler/integer_right_triangles'

class IntegerRightTrianglesTest < Minitest::Test
  def test_integer_right_triangles
    assert_equal 840, integer_right_triangles
  end

  def test_integer_right_triangles_upper_bound_one_hundred
    assert_equal 90, integer_right_triangles(100)
  end

  def test_integer_right_triangles_upper_bound_one_hundred_and_thirty
    assert_equal 120, integer_right_triangles(130)
  end
end
