class CityWeather::CLI

  def call
    CityWeather::Scraper.scrape_cities
    list_cities
    more_info
    goodbye
  end
  
  def list_cities
    puts "Capital cities:"
    cities = CityWeather::City.all
    cities.each.with_index(1) {|city, i| puts "#{i}. #{city.name.join}"}
    puts " "
    more_info
  end
  
  def more_info
    input = nil
    
    puts "Which city's weather would you like to see?"
    puts "To return to the main list type list or type exit to leave the program."
    input = gets.strip.downcase 
    
    if input.to_i > 0
      selected =  CityWeather::City.find_by_index(input.to_i - 1)
      puts " "
      puts "The temperature in #{selected.name.join} is currently #{selected.temperature.join}"
      puts " "
    elsif input == "list"
      list_cities
    end
  end 

  def goodbye
    puts " "
    puts "See you later!"
  end
  
end