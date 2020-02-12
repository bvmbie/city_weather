class DailyDeal::CLI

  def call
    list_locations
    menu
    goodbye
  end

  def list_locations
    puts "European capital cities:"
    @cities = CityWeather::Weather.today
    @cities.each.with_index(1) do |city, i|
      puts "#{i}. #{city.location}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the city you'd like to see the weather of or type list to see the cities again or type exit:"
      input = gets.strip.downcase

      if input.to_i > 0
        chosen = @cities[input.to_i-1]
        puts "#{chosen.location} - #{chosen.temperature}"
      elsif input == "list"
        list_locations
      else
        puts "Not sure what you want, type list or exit."
      end
    end
  end

  def goodbye
    puts "See you later!"
  end
end