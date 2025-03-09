# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../project_euler/lexicographic_permutations'

class LexicographicPermutationsTest < Minitest::Test
  def test_lexicographic_permutations
    assert_equal 2_783_915_460, lexicographic_permutations
  end
end
