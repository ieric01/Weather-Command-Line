require 'json'
require 'pry'
require 'Date'
class WeatherAPICaller

  attr_reader :url, :weather_data, :error
  attr_accessor :city

  URL_BEGIN ="http://api.openweathermap.org/data/2.5/forecast/daily?q="
  URL_END = "&mode=json&units=metric&cnt=5"

  def initialize(user_location)
    @url = URL_BEGIN + user_location + URL_END
    @weather_data = JSON.load(open(self.url))
    @error = false
  end

  def check
    self.parse_data
    rescue NoMethodError
    @error = true
  end

  def parse_data
    city_name = weather_data["city"]["name"]
    country = weather_data["city"]["country"]
  end

  def make_city
    self.city = City.new(weather_data["city"]["name"], weather_data["city"]["country"])
  end

  def load_forecast
    weather_data["list"].each do |day|
      description = day["weather"][0]["description"]
      celcius = day["temp"]["day"]
      fahrenheit = (((9.00/5*(celcius))+32).round).to_s+"℉"
      unixnum = day["dt"].to_s
      day_name = DateTime.strptime(unixnum,"%s").strftime("%A")
      date = DateTime.strptime(unixnum,"%s").to_s[0..9]
      forecast = Forecast.new(fahrenheit, description, date, day_name, self.city)
      self.city.forecasts << forecast
    end
    city
  end

end
