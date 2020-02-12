class CityWeather::City
  attr_accessor :name, :temperature

  @@all = []

  def initialize(name, temperature)
    @name = name
    @temperature = temperature
    save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_by_index(index)
    @@all[index]
  end
end