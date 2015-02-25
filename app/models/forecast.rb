class Forecast

  attr_accessor :fahrenheit, :description, :date, :day_name, :city

  def initialize(fahrenheit, description, date, day_name, city)
    @fahrenheit = fahrenheit
    @description = description
    @date = date
    @day_name = day_name
    @city = city
  end
end
