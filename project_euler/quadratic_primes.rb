require_relative "largest_prime_factor"

def quadratic_primes(a_limit, b_limit)
  max_primes = 0
  max_coefficients = [0, 0]
  primes_cache = {}

  b_primes = (-b_limit).upto(b_limit).select { |n| is_prime(n) }

  (-a_limit + 1).upto(a_limit - 1) do |a|
    b_primes.each do |b|
      next if b == 0 || a == 0
      n = 0
      loop do
        number = n**2 + (a * n) + b
        break if number < 2

        is_prime = primes_cache[number] ||= is_prime(number)
        break unless is_prime
        n += 1
        max_coefficients
      end

      max_primes, max_coefficients = n, [a, b] if n > max_primes
    end
  end

  max_coefficients.reduce(:*)
end
