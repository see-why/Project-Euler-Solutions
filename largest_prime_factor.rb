def largest_prime_factor(limit)
    number = 2
    prime = 2
    while number <= limit do
        if limit % number == 0
            limit /= number
            prime = isPrime(number) ? number : prime
        end
        number += 1

    end
    prime
end

def isPrime(n)
    if n <= 1
        return false
    end
    for i in 2..Math.sqrt(n)
        if n % i == 0
            return false
        end
    end
    return true
end

