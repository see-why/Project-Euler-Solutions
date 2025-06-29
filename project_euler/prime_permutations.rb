# frozen_string_literal: true

require_relative './largest_prime_factor'

# The arithmetic sequence,
# 1487, 4817, 8147 in which each of the terms increases by
# 3330, is unusual in two ways: (i) each of the three terms are prime, and, (ii) each of the
# 4-digit numbers are permutations of one another.
# There are no arithmetic sequences made up of three
# 1-,
# 2-, or
# 3-digit primes, exhibiting this property, but there is one other
# 4-digit increasing sequence.
# What
# 4-digit number do you form by concatenating the three terms in this sequence?

def prime_permutations
  (2_000..3_339).each do |number|
    next unless prime?(number)

    next_in_sequence = number + 3330
    next unless prime?(next_in_sequence)

    last_in_sequence = next_in_sequence + 3330
    next unless prime?(last_in_sequence)

    sorted_num = sort_digits(number)
    next unless sorted_num == sort_digits(next_in_sequence)
    next unless sorted_num == sort_digits(last_in_sequence)

    return concat_numbers(number, next_in_sequence, last_in_sequence)
  end
end

def sort_digits(number)
  number.to_s.chars.sort.join
end

def concat_numbers(*args)
  args.map(&:to_s).join.to_i
end

pp prime_permutations
