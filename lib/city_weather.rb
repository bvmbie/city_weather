require "city_weather/version"

module CityWeather
  class Error < StandardError; end
  # Your code goes here...
end

# environment file

require 'nokogiri'
require 'pry'
require 'open-uri'

require_relative './city_weather/version'
require_relative './city_weather/cli'
require_relative './city_weather/weather.rb'
