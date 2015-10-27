require 'httparty'
class Alerts
  def initialize zip_code
    @user_zipcode = zip_code
    @api_key = 'c44c46161f9c4f8a'
    @url = "http://api.wunderground.com/api/#{@api_key}/alerts/q/#{@user_zipcode}.json"
  end

  def get_alerts
    data = HTTParty.get(@url)
    alerts = data['alerts']
    "Current weather alerts include #{alerts}" unless alerts.empty?
  end
end
