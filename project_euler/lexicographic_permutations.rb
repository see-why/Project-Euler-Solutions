# frozen_string_literal: true

def lexicographic_permutations
  (0..9).to_a.permutation(10).to_a[999_999].join.to_i
end
