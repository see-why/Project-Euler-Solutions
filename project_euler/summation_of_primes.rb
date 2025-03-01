def summation_of_primes(n)
  sieve = Array.new(n + 1, true)
  sieve[0] = sieve[1] = false
  p = 2

  while p * p <= n
    if sieve[p]
      (p * p).step(n, p) { |i| sieve[i] = false }
    end
    p += 1
  end

  sieve.each_index.select { |i| sieve[i] }.sum
end
