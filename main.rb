require './client'
require 'colorize'
# puts "Please enter 5 digit zipcode to receive local weather report and storm warnings."
# zipcode = gets.chomp.to_i
# times = Sun.new(zipcode)
# hurricanes = Hurricane.new
# sevenday_forecast = SevenDayForecast.new(zipcode)
# alerts = Alerts.new(zipcode)
#
# puts times.get_times
# puts sevenday_forecast.get_sevenDay
# puts hurricanes.get_hurricanes
# puts alerts.get_alerts
# api_key = 'c44c46161f9c4f8a'
# data = HTTParty.get("http://api.wunderground.com/api/#{api_key}/conditions/q/37814.json")
# puts data.display_location.city

client = Client.new

client.hurricanes.each do |hurricane|
  puts "Current huricanes include #{hurricane.name.red}"
end
