require 'colorize'
require 'httparty'
class Sun
  def initialize user_zipcode
    @api_key = 'c44c46161f9c4f8a'
    @user_zipcode = user_zipcode
    @url = "http://api.wunderground.com/api/#{@api_key}/astronomy/q/#{@user_zipcode}.json"
  end

  def get_times
    data = HTTParty.get(@url)
    sunrise_hour = data['sun_phase']['sunrise']['hour']
    sunrise_min = data['sun_phase']['sunrise']['minute']
    sunset_hour = data['sun_phase']['sunset']['hour']
    sunset_min = data['sun_phase']['sunset']['minute']
    "Sunrise for today: #{sunrise_hour.yellow}:#{sunrise_min.yellow}AM. The sunset is at #{sunset_hour.yellow}:#{sunset_min.yellow}PM."
  end
end
