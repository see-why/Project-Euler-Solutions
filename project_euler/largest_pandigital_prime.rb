# frozen_string_literal: true

require_relative 'largest_prime_factor'

def largest_pandigital_prime
  upper_bound = 9
  lower_bound = 1
  prime = 2

  loop do
    permutations = (lower_bound..upper_bound).to_a.permutation(upper_bound).map { |perm| perm.join.to_i }
    prime = permutations.select { |perm| prime? perm }.max
    puts prime
    return prime if prime

    upper_bound -= 1
    puts
  end

  prime
end

puts largest_pandigital_prime
