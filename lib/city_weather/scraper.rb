class CityWeather::Scraper
  
  def self.scrape_cities

    page = Nokogiri::HTML(open("https://www.timeanddate.com/weather/?continent=europe&low=c"))
   
    page.css("div.my-city__item").each do |city|

      name = city.css("span.my-city__city").text.split(/(?=[A-X])/)
      temperature = city.css("span.my-city__temp").text.split(/(?<=[C])/)
      
      CityWeather::City.new(name, temperature)
    end
  end
end