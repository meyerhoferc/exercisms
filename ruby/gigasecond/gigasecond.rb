require 'pry'

module BookKeeping
  VERSION = 5
end

class Gigasecond

  def self.from(birth)
    format_date(birth)
    Time.utc(final_year, final_month, final_day, final_hour, final_minute, final_second)
  end

  def self.format_date(birth)
    gigasecond = 1e9
    year = birth.year
    month = birth.month
    day = birth.mday
    hour = birth.hour
    minute = birth.min
    second = birth.sec
    final_day = add_days(day)
    final_second = add_seconds(second)
  end

  def self.add_seconds(second)
    second + 6400
  end

  def self.add_days(day)
    day + 11574
  end
end
