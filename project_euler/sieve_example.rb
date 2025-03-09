# frozen_string_literal: true

def demonstrate_sieve(limit)
  # Create sieve array
  sieve = Array.new(limit + 1, true)
  sieve[0] = sieve[1] = false

  # For each step, show the marking process
  (2..Math.sqrt(limit)).each do |p|
    next unless sieve[p]

    puts "\nProcessing prime number: #{p}"
    puts 'Before marking multiples:'
    puts sieve.each_with_index.map { |is_prime, i| is_prime ? i : '_' }.join(' ')

    # Mark multiples
    (p * p).step(limit, p) do |i|
      sieve[i] = false
      puts "Marking #{i} as composite"
    end

    puts 'After marking multiples:'
    puts sieve.each_with_index.map { |is_prime, i| is_prime ? i : '_' }.join(' ')
  end

  # Show final prime numbers
  puts "\nFinal prime numbers:"
  puts sieve.each_with_index.select { |is_prime, _i| is_prime }.map(&:last).join(' ')
end

# Demonstrate with a small number
puts 'Demonstrating Sieve of Eratosthenes for numbers up to 20:'
demonstrate_sieve(20)
