def sum_of_proper_divisors(n)
  return 0 if n == 1

  sum = 1
  sqrt = Math.sqrt(n).to_i

  (2..sqrt).each do |i|
    if n % i == 0
      sum += i
      sum += n / i if n != i * i
    end
  end

  sum
end

def amicable_numbers(limit)
  amicable_sum = 0

  (2...limit).each do |n|
    sum1 = sum_of_proper_divisors(n)
    # sum1 <= n not allowed so we don't count the same number twice
    next if sum1 >= limit || sum1 <= n

    sum2 = sum_of_proper_divisors(sum1)
    if sum2 == n
      amicable_sum += n + sum1
    end
  end

  amicable_sum
end
