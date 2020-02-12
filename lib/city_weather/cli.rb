class CityWeather::CLI

  def call
    CityWeather::Scraper.scrape_cities
    list_cities
    more_info
    goodbye
  end
  
  def list_cities
    puts "Temperatures and Weather in Capitals in Europe:"
    puts "(As reported by timeanddate.com)"
    cities = CityWeather::City.all
    cities.each.with_index(1) {|city, i| puts "#{i}. #{city.name}"}
    puts " "
  end
  
  def more_info
    input = nil

    while input != "exit"
      puts "Which city's weather would you like to see? Type list to return to the main list or exit to leave the program."
      input = gets.strip

      if input.to_i>0
        selected =  CityWeather::City.find_by_index(input.to_i - 1)
        if selected == nil
          puts "Not sure what you meant. Please try again."
        else
          puts " "
          puts "The temperature in #{selected.name} is currently #{selected.temperature}"
          puts " "
        end
      elsif input.downcase == "list"
        list_cities
      else
        puts "Not sure what you meant. Please try again."
      end
    end 
  end

  def goodbye
    puts "See you later!"
  end
end