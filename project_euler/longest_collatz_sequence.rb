def longest_collatz_sequence(limit)
  @cache = {1 => 1}
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

def chain_length(n)
  return @cache[n] if @cache[n]

  next_num = n.even? ? n / 2 : 3 * n + 1
  @cache[n] = 1 + chain_length(next_num)
end
