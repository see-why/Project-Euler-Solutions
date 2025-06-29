# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../project_euler/prime_permutations'

class PrimePermutationsTest < Minitest::Test
  def test_prime_permutations
    assert_equal 296_962_999_629, prime_permutations
  end
end
