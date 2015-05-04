class City

  def self.all
    @@cities
  end

  attr_accessor :forecasts
  attr_reader :name, :country

  def initialize(name, country)
    @@cities = []
    @name = name
    @country = country
    @forecasts = []
    city_check
  end

  def city_check
    if @@cities != []
      @@cities.each do |each_city|
      if each_city.name.include?(self.name)
        each_city = self
      else
        @@cities << self
        end
      end
    else
      @@cities << self
    end
  end

  def print_forecast
    puts "==================="
    forecasts.each do |forecast|
      puts forecast.date
      puts forecast.day_name
      puts forecast.description
      puts forecast.fahrenheit
      puts "--------------------"
      sleep(1)
    end
  end

  def print_history
    puts "Your search history :"
    puts "================"
    City.all.each do |each_city|
      puts each_city.name.bold
      puts "Today Weather : "
      puts "    #{each_city.forecasts[0].date}"
      puts "    #{each_city.forecasts[0].day_name}"
      puts "    #{each_city.forecasts[0].description}"
      puts "    #{each_city.forecasts[0].fahrenheit}"
      puts
    end
  end
end
