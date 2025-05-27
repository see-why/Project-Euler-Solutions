# frozen_string_literal: true

def largest_pandigital_prime
  upper_bound = 9
  lower_bound = 0
  prime = 2

  loop do
    permutations = (lower_bound..upper_bound).to_a.permutation.map { |perm| perm.join.to_i }
    prime = permutations.select { |perm| is_prime? perm }.max

    return prime if prime

    upper_bound -= 1
  end

  prime
end
