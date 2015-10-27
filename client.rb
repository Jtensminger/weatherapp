require 'httparty'
require './hurricane'
require './alerts'
require 'colorize'
class Client
  include HTTParty
  API_KEY = 'c44c46161f9c4f8a'
  base_uri "api.wunderground.com"

  def initialize zipcode
    @zipcode = zipcode
  end

  def hurricanes
    data = self.get("currenthurricane/view.json")
    data['currenthurricane'].map{|h| Hurricane.parse(h)}
  end

  def alerts
    data = self.get("alerts/q/#{@zipcode}.json")
    data['alerts'].map{|a| Alert.parse(a)}
  end

  def forecast
    data = self.get("forecast10day/q/#{@zipcode}.json")
    forecast_arr = []
    i = 0
    20.times do |i|

      day = data['forecast']['txt_forecast']['forecastday'][i]['title']
      conditions = data['forecast']['txt_forecast']['forecastday'][i]['fcttext']
      forecast_arr << [day, conditions]
      i += 2
    end
    forecast_arr
  end

  def sun
    data = self.get("/astronomy/q/#{@zipcode}.json")
    sunrise_hour = data['sun_phase']['sunrise']['hour']
    sunrise_min = data['sun_phase']['sunrise']['minute']
    sunset_hour = data['sun_phase']['sunset']['hour']
    sunset_min = data['sun_phase']['sunset']['minute']
    "Sunrise for today: #{sunrise_hour.yellow}:#{sunrise_min.yellow}AM. The sunset is at #{sunset_hour.yellow}:#{sunset_min.yellow}PM."
  end

  def conditions
    data = self.get("/geolookup/conditions/q/#{@zipcode}.json")
    current = data['location']['city']
    temp = data['current_observation']['temp_f']
    "Current conditions for #{current.magenta} is #{temp.to_s.red}F."
  end


  def get(path)
    self.class.get("/api/#{API_KEY}/#{path}")
  end
end
