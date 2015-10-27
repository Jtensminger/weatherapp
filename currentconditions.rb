require 'httparty'

class CurrentConditions
  def initialize zipcode
    @user_zipcode = zipcode
    @api_key = 
    @url = "http://api.wunderground.com/api/#{@api_key}/conditions/q/#{@user_zipcode}.json"
  end

  def get_conditions
    data = HTTParty.get(@url)

  end
end
