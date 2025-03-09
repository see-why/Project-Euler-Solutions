# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../project_euler/names_scores'

class NamesScoresTest < Minitest::Test
  def setup
    @test_file = './test_names.txt'
    @original_file_read = File.method(:read)
  end

  def teardown
    File.singleton_class.define_method(:read, @original_file_read)
    File.delete(@test_file) if File.exist?(@test_file)
  end

  def stub_file_content(content)
    File.singleton_class.define_method(:read) do |_|
      content
    end
  end

  def test_names_scores_with_single_name
    stub_file_content('"JOHN"')
    assert_equal 47, names_scores(@test_file)
  end

  def test_names_scores_with_repeated_letters
    stub_file_content('"ANNA","EMMA"')
    assert_equal 94, names_scores(@test_file)
  end

  def test_names_scores_with_extremely_long_name
    stub_file_content("\"#{'A' * 1000}\"")
    assert_equal 1000, names_scores(@test_file)
  end
end
