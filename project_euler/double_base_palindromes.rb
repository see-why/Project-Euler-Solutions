# frozen_string_literal: true

def double_base_palindromes(first_base, second_base)
  sum = 0
  999_999.downto(0) do |num|
    str_num_base_ten = num.to_s(first_base)
    str_num_base_two = num.to_s(second_base)
    sum += num if str_num_base_ten == str_num_base_ten.reverse && str_num_base_two == str_num_base_two.reverse
  end
  sum
end
