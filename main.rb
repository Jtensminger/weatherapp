require './sun'
require './hurricane'
require './sevenday'
require './alerts'

puts "Please enter 5 digit zipcode to receive local weather report and storm warnings."
zipcode = gets.chomp.to_i
times = Sun.new(zipcode)
hurricanes = Hurricane.new
sevenday_forecast = SevenDayForecast.new(zipcode)
alerts = Alerts.new(zipcode)

puts times.get_times
puts sevenday_forecast.get_sevenDay
puts hurricanes.get_hurricanes
puts alerts.get_alerts
