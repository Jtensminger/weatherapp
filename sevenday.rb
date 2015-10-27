require 'httparty'
require 'colorize'
class SevenDayForecast
  def initialize zipcode
    @user_zipcode = zipcode
    @api_key = 'c44c46161f9c4f8a'
    @url = "http://api.wunderground.com/api/#{@api_key}/forecast10day/q/#{@user_zipcode}.json"
  end

  def get_sevenDay
    data = HTTParty.get(@url)
    10.times do |i|
      day = data['forecast']['txt_forecast']['forecastday'][i]['title']
      conditions = data['forecast']['txt_forecast']['forecastday'][i]['fcttext']
      puts "Conditions".magenta + " for #{day.cyan}: #{conditions.light_green}."
    end
    return nil
  end

end
