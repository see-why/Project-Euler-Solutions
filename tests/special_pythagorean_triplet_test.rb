require "minitest/autorun"
require_relative "../project_euler/special_pythagorean_triplet"

class SpecialPythagoreanTripletTest < Minitest::Test
  def test_special_pythagorean_triplet
    assert_equal 60, special_pythagorean_triplet(12)
    assert_equal 31875000, special_pythagorean_triplet(1000)
    assert_nil special_pythagorean_triplet(11)
  end
end
