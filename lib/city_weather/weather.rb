class CityWeather::Weather
  attr_accessor :location, :temperature

  def self.today
    self.scrape_weather
  end

  def self.scrape_weather
    weathers = []
    weathers << self.scrape
    weathers
  end

  def self.scrape
    doc = Nokogiri::HTML(open("https://www.timeanddate.com/weather/?continent=europe&low=c"))
    
    weather = self.new
    weather.location = doc.search("div.tb-scroll a").text.split(/(?=[A-BD-LO-Z])|(?=North)|(?=Chișinău)|(?=Copenhagen)|(?=Madrid)|(?=Minsk)|(?=Monaco)|(?=Moscow)|(?<=Yerevan)/)
    weather.temperature = doc.search("td.rbi").text.split(/(?<=C)/)
    
    weather
  end
end