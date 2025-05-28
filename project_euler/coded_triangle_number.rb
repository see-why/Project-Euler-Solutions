# frozen_string_literal: true

def coded_triangle_numbers(words)
  array_of_sums = words.map { |word| word.bytes.map { |b| b - 'A'.ord + 1 }.reduce(&:+) }
  array_of_sums.select { |sum| coded_triangle_number?(sum) }.count
end

def coded_triangle_number?(number)
  product = number * 2
  n = 0

  loop do
    n_product = n * (n + 1)
    return true if n_product == product

    return false if n_product > product

    n += 1
  end
end

file = File.read('files/words.txt')
words = file.gsub('"', '').split(',')

puts coded_triangle_numbers(words)
