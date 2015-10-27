require 'httparty'
require './hurricane'
class Client
  include HTTParty
  API_KEY = 'c44c46161f9c4f8a'
  base_uri "api.wunderground.com"

  def hurricanes
    data = self.get("currenthurricane/view.json")
    data['currenthurricane'].map{|h| Hurricane.parse(h)}
  end

  def get(path)
    self.class.get("/api/#{API_KEY}/#{path}")
  end
end
