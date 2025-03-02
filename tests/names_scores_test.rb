require "minitest/autorun"
require_relative "../project_euler/names_scores"

class NamesScoresTest < Minitest::Test
  def setup
    @test_file = "./test_names.txt"
  end

  def teardown
    File.delete(@test_file) if File.exist?(@test_file)
  end

  def test_names_scores_with_single_name
    File.write(@test_file, '"JOHN"')
    assert_equal 47, names_scores(@test_file)
  end

  def test_names_scores_with_repeated_letters
    File.write(@test_file, '"ANNA","EMMA"')
    assert_equal 94, names_scores(@test_file)
  end

  def test_names_scores_with_extremely_long_name
    long_name = "A" * 1000
    File.write(@test_file, "\"#{long_name}\"")
    assert_equal 1000, names_scores(@test_file)
  end
end
