class CityWeather::Weather

  attr_accessor :name, :description, :temperature

  def self.cities
    doc = Nokogiri::HTML(open("https://www.timeanddate.com/weather/?continent=europe&low=c"))
    binding.pry
    #doc.search("div.tb-scroll a").text
    #=> "AmsterdamNorth NicosiaAthensOsloBelgradeParisBerlinPodgoricaBernPragueBratislavaPristinaBrusselsReykjavikBucharestRigaBudapestRomeChișinăuSan MarinoCopenhagenSarajevoDouglasSkopjeDublinSofiaGibraltarStockholmHelsinkiTallinnKyivTbilisiLisbonTiranaLjubljanaVaduzLondonVallettaLuxembourgVatican CityMadridViennaMinskVilniusMonacoWarsawMoscowYerevanNicosiaZagreb"
  end
  
  
  
    # continue 54 here

end