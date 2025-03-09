# frozen_string_literal: true

def names_scores(file_path = './names.txt')
  # Read and process the names file
  content = File.read(file_path)

  # Parse names: remove quotes, split by comma, and sort alphabetically
  names = content.gsub('"', '').split(',').sort

  # Calculate total score
  names.each_with_index.sum do |name, index|
    # Calculate name score (A=1, B=2, etc) and multiply by position
    name_value = name.chars.sum { |char| char.ord - 'A'.ord + 1 }
    name_value * (index + 1)
  end
end
