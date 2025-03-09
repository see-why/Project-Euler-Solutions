# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/pride' # For colored output
require 'simplecov'

SimpleCov.start do
  add_filter '/tests/'
  track_files 'project_euler/**/*.rb'
end

# Automatically require all test files
Dir.glob('./tests/**/*_test.rb').sort.each { |file| require file }
