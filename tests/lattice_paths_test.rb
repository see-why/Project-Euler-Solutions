require "minitest/autorun"
require_relative "../project_euler/lattice_paths"

class LatticePathsTest < Minitest::Test
  def test_lattice_paths_with_large_input
    assert_equal 137846528820, lattice_paths(20)
  end

  def test_lattice_paths_with_2x2_grid
    assert_equal 6, lattice_paths(2)
  end

  def test_lattice_paths_with_4x4_grid
    assert_equal 70, lattice_paths(4)
  end
end
