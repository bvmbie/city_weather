class CityWeather::Weather

  attr_accessor :name, :temperature

  def self.scrape
    doc = Nokogiri::HTML(open("https://www.timeanddate.com/weather/?continent=europe&low=c"))
    name = doc.search("div.tb-scroll a").text.split(/(?=[A-BD-LO-Z])|(?=North)|(?=Chișinău)|(?=Copenhagen)|(?=Madrid)|(?=Minsk)|(?=Monaco)|(?=Moscow)|(?<=Yerevan)/)
    temperature = doc.search("td.rbi").text.split(/(?<=C)/)
  end
  
    # continue 54 here

end