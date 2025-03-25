require 'minitest/autorun'
require_relative '../project_euler/integer_right_triangles'

class IntegerRightTrianglesTest < Minitest::Test
  def test_integer_right_triangles
    assert_equal 840, integer_right_triangles
  end
end
