def names_scores(file_path = "./names.txt")
  names = File.read(file_path).delete('"').split(",").sort

  names.map { |name|
    name.chars.map { |char|
      ((char.ord - 64))
    }.sum
  }.each_with_index.map { |score, index|
    score * (index + 1)
  }.sum
end
