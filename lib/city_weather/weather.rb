class CityWeather::Weather

  attr_accessor :name, :description, :temperature

  def self.cities
    doc = Nokogiri::HTML(open("https://www.timeanddate.com/weather/?continent=europe&low=c"))
    # cities = doc.search("div.tb-scroll a").text.split(/(?=[A-BD-LO-Z])|(?=North)|(?=Chișinău)|(?=Copenhagen)|(?=Madrid)|(?=Minsk)|(?=Monaco)|(?=Moscow)|(?<=Yerevan)/)
  end
  
   def self.temperatures
    doc = Nokogiri::HTML(open("https://www.timeanddate.com/weather/?continent=europe&low=c"))
    binding.pry
    # temperatures = doc.search("td.rbi").text
  end
  
  
  
    # continue 54 here

end