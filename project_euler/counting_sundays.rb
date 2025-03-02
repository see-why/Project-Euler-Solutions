def counting_sundays
  # Days in each month (non-leap year)
  days_in_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

  current_day = 1
  sunday_count = 0

  (1900...2001).each do |year|
    (1..12).each do |month|
      if year % 4 == 0 && month == 2
        days_in_month[1] = 29
      end

      if current_day == 0 && year >= 1901
        sunday_count += 1
      end

      current_day = (current_day + days_in_month[month - 1]) % 7
    end
  end
  sunday_count
end
