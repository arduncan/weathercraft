module ApplicationHelper
  def format_day(date)
    date.to_time.strftime("%A, %B %d")
  end

  def convert_to_fahrenheit(c)
    return (( c * 9 / 5) + 32).round(2)
  end

  def split_lat_long(lat_long)
    lat_long.split(',')
  end
end
