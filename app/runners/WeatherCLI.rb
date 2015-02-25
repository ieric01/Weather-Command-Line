require 'pry'
# require 'colorize'

class WeatherCLI

  attr_accessor :input, :user_location, :city

  def call
    system "clear"
    puts "Hi, this is the weather forecast app, please type"
    puts "● search"
    puts "● history"
    puts "● help"
    puts "● exit"
    run
  end

  def run
    input = STDIN.gets.chomp.strip
    if input == "search"
      system "clear"
      enter_command
      return help_method
    elsif input == "help"
      help_method
    elsif input == "history"
      system "clear"
      history
      return call
    elsif input == "exit"
      puts "Thank You for visiting our app"
      puts "---------------- Eric & Anton™"
      exit!
    else
      puts "Wrong Input, Please type better".colorize(:red)
      sleep(3)
      return call
    end
  end

  def help_method
    puts "☀︎ Type 'search' to search"
    puts "☀︎ Type 'history' to see your search history"
    puts "☀︎ Type 'help' to view this menu again"
    puts "☀︎ Type 'exit' to exit"
    return run
  end

  def enter_command
    puts "Enter your city:"
    user_city = STDIN.gets.chomp.strip
    exit! if user_city == "exit"
    puts "Enter the country name or symbol:"
    user_country = STDIN.gets.chomp.strip
    exit! if user_country == "exit"
    user_location = "#{user_city}, #{user_country}"
    search(user_location)
  end

  def search(user_location)
    puts "Your city was " + user_location.bold + ", I am searching..."
    weatherapi = WeatherAPICaller.new(user_location)
    weatherapi.check
    if weatherapi.error || weatherapi.weather_data["city"]["name"] == ""
      puts "Invalid city or country, please type better...".blink
      STDIN.gets
      return enter_command
    end
    weatherapi.make_city
    puts "Fetching data..."
    sleep(3)
    puts "Thank you for your patience. This is forecast for the next 5 days of :"
    city = weatherapi.load_forecast
    sleep(2)
    puts (city.name).bold
    puts (city.country).bold
    sleep(1)
    city.print_forecast
    @city = city
    self.user_location = nil
  end

  def history
    if @city == nil
      puts "There is no history to show"
      STDIN.gets
    else
      city.print_history
      STDIN.gets
    end
  end
end
