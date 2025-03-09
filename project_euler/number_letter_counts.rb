# frozen_string_literal: true

def number_letter_counts(num)
  (1..num).reduce(0) do |acc, i|
    word = numbers_to_word(i)
    acc + word.gsub(/[^a-z]/, '').length
  end
end

def numbers_to_word(num)
  return 'zero' if num.zero?

  ones = %w[one two three four five six seven eight nine]
  teens = %w[ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen]
  tens = %w[twenty thirty forty fifty sixty seventy eighty ninety]

  words = []

  process_thousands(words, num, ones)
  num %= 1000
  process_hundreds(words, num, ones)
  num %= 100
  process_tens_and_ones(words, num, ones, teens, tens)

  words.join(' ')
end

def process_thousands(words, num, ones)
  return unless num >= 1000

  thousands = num / 1000
  words << "#{ones[thousands - 1]} thousand" if thousands.positive?
end

def process_hundreds(words, num, ones)
  return unless num >= 100

  hundreds = num / 100
  words << "#{ones[hundreds - 1]} hundred" if hundreds.positive?
  words << 'and' if (num % 100).positive? && hundreds.positive?
end

def process_tens_and_ones(words, num, ones, teens, tens)
  return unless num.positive?

  if num < 10
    words << ones[num - 1]
  elsif num < 20
    words << teens[num - 10]
  else
    word = tens[num / 10 - 2]
    word += " #{ones[num % 10 - 1]}" if (num % 10).positive?
    words << word
  end
end
