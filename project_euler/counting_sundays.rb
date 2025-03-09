# frozen_string_literal: true

def counting_sundays(start_day_index, start_year, end_year)
  # Days in each month (non-leap year)
  days_in_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

  current_day = start_day_index
  sunday_count = 0

  (start_year..end_year).each do |year|
    (1..12).each do |month|
      days_in_month[1] = 29 if (year % 4).zero? && month == 2

      sunday_count += 1 if current_day.zero? && year >= 1901

      current_day = (current_day + days_in_month[month - 1]) % 7
    end
  end
  sunday_count
end
