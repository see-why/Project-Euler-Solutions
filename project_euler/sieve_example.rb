# frozen_string_literal: true

def demonstrate_sieve(limit)
  # Create sieve array
  sieve = Array.new(limit + 1, true)
  sieve[0] = sieve[1] = false

  # For each step, show the marking process
  (2..Math.sqrt(limit)).each do |p|
    next unless sieve[p]

    # Mark multiples
    (p * p).step(limit, p) do |i|
      sieve[i] = false
    end
  end

  sieve.each_with_index.select { |is_prime, _i| is_prime }.map(&:last).join(' ')
end
