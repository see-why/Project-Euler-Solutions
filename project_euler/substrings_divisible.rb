# frozen_string_literal: true

def substrings_divisible(str, num)
  multiples = 0
  generate_substring(str).each do |sub_str|
    next if sub_str[0] == '0' && sub_str.size > 1

    val = sub_str.to_i
    multiples += 1 if (val % num).zero? && !val.zero?
  end

  multiples
end

def generate_substring(str)
  substrings = []
  (0...str.length).each do |start|
    (start...str.length).each do |last|
      substrings << str[start..last]
    end
  end

  substrings
end
