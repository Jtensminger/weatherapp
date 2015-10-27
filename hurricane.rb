require 'httparty'
class Hurricane
  def initialize
    @api_key = 'c44c46161f9c4f8a'
    @url = "http://api.wunderground.com/api/#{@api_key}/currenthurricane/view.json"
  end

  def get_hurricanes
    data = HTTParty.get(@url)
    currenthurricane_name = data['currenthurricane'][0]['stormInfo']['stormName_Nice']
    "Current huricanes include #{currenthurricane_name.red}"
  end
end
