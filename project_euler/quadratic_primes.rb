require_relative "largest_prime_factor"

def quadratic_primes(a_limit, b_limit)
  max_primes = 0
  max_coefficients = [0, 0]

  (-a_limit + 1).upto(a_limit - 1) do |a|
    (-b_limit).upto(b_limit) do |b|
      next if b == 0 || a == 0
      n = 0
      loop do
        number = n**2 + (a * n) + b
        break if number < 2 || !is_prime(number)
        n += 1
        max_coefficients
      end

      max_primes, max_coefficients = n, [a, b] if n > max_primes
    end
  end

  max_coefficients.reduce(:*)
end
