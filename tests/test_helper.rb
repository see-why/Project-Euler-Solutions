require "minitest/autorun"
require "minitest/pride"  # For colored output

# Automatically require all test files
Dir.glob("./tests/**/*_test.rb").each { |file| require file }
