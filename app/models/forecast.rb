class Forecast

  attr_accessor :fahrenheit, :description, :date, :day_name, :city

  def initialize(fahrenheit, description, date, day_name, city)
    @fahrenheit = fahrenheit
    @description = description
    @date = date
    @day_name = day_name
    @city = city
  end

  def print_forecast
    puts date
    puts day_name
    puts description
    puts fahrenheit

  end
end
