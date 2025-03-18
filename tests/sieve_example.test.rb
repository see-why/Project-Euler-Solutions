require 'minitest/autorun'
require_relative '../project_euler/sieve_example'

class DemonstrateSieveTest < Minitest::Test
  def test_demonstrate_sieve_with_limit_one
    assert_equal '', demonstrate_sieve(1)
  end

  def test_demonstrate_sieve_up_to_ten
    assert_equal '2 3 5 7', demonstrate_sieve(10)
  end

  def test_demonstrate_sieve_with_large_limit
    result = demonstrate_sieve(1_000_000)
    assert_equal 78_498, result.split.size
    assert_equal '999983', result.split.last
  end
end
