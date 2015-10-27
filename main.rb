require './sun'
require './hurricane'
require './sevenday'
require './alerts'
times = Sun.new(37814)
hurricanes = Hurricane.new
sevenday_forecast = SevenDayForecast.new(37814)
alerts = Alerts.new(37814)

puts times.get_times
puts sevenday_forecast.get_sevenDay
puts hurricanes.get_hurricanes
puts alerts.get_alerts
# puts "Please enter zip code."
# user_zipcode = gets.chomp.to_i
# api_key = 'c44c46161f9c4f8a'
# url4 = "http://api.wunderground.com/api/#{api_key}/alerts/q/#{user_zipcode}.json"
# response = HTTParty.get(url)
# alerts = response4['alerts']
# puts "Current weather alerts include #{alerts}" unless alerts.empty?
