class City

<<<<<<< HEAD
=======
    @@cities = []

>>>>>>> 44c701be488bbcd5f7138dbb765f3beeb8136b79
  def self.all
    @@cities
  end

  attr_accessor :forecasts
  attr_reader :name, :country

  def initialize(name, country)
    @name = name
    @country = country
    @forecasts = []
    city_check
  end

  def city_check
<<<<<<< HEAD
    if @@cities != []
      @@cities.each do |each_city|
      if each_city.name.include?(self.name)
        each_city = self
=======
      if @@cities != []
        @@cities.each do |each_city|
        if each_city.name.include?(self.name)
          each_city = self
        else
          @@cities << self
          end
        end
>>>>>>> 44c701be488bbcd5f7138dbb765f3beeb8136b79
      else
        @@cities << self
      end
    end

  def print_forecast
    forecasts.each do |forecast|
      forecast.print_forecast
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
