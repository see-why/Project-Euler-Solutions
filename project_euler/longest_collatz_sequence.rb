# frozen_string_literal: true

def longest_collatz_sequence(limit)
  @cache = { 1 => 1 }
  longest_chain = 0
  longest_chain_number = 0

  (1..limit).each do |n|
    chain = chain_length(n)

    if chain > longest_chain
      longest_chain = chain
      longest_chain_number = n
    end
  end

  longest_chain_number
end

def chain_length(num)
  return @cache[num] if @cache[num]

  next_num = num.even? ? num / 2 : 3 * num + 1
  @cache[n] = 1 + chain_length(next_num)
end
