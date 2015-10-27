require 'httparty'
require 'json'
require 'pry'
require './sun'

times = Sun.new(37814)
puts times.get_times
# puts "Please enter zip code."
# user_zipcode = gets.chomp.to_i
# puts ""
# api_key = 'c44c46161f9c4f8a'
#
# url = "http://api.wunderground.com/api/#{api_key}/forecast10day/q/#{user_zipcode}.json"
# url3 = "http://api.wunderground.com/api/#{api_key}/currenthurricane/view.json"
# url4 = "http://api.wunderground.com/api/#{api_key}/alerts/q/#{user_zipcode}.json"
#
# response = HTTParty.get(url)
# response2 = HTTParty.get(url2)
# response3 = HTTParty.get(url3)
# response4 = HTTParty.get(url4)
#
# sunrise_hour = response2['sun_phase']['sunrise']['hour']
# sunrise_min = response2['sun_phase']['sunrise']['minute']
# sunset_hour = response2['sun_phase']['sunset']['hour']
# sunset_min = response2['sun_phase']['sunset']['minute']
#
# currenthurricane_name = response3['currenthurricane'][0]['stormInfo']['stormName_Nice']
# alerts = response4['alerts']
#
# 10.times do |i|
#   day = response['forecast']['txt_forecast']['forecastday'][i]['title']
#   conditions = response['forecast']['txt_forecast']['forecastday'][i]['fcttext']
#   puts "Conditions for #{day}: #{conditions}."
#   puts ""
# end
# puts "Sunrise for today: #{sunrise_hour}:#{sunrise_min}AM. The sunset is at #{sunset_hour}:#{sunset_min}PM."
# puts ""
# puts "Current huricanes include #{currenthurricane_name}"#{"} with wind speeds of #{currenthurricane_wind}Mph."
# puts "Current weather alerts include #{alerts}" unless alerts.empty?
