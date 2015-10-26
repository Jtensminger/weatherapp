require 'httparty'
require 'json'
require 'pry'
puts "Please enter zip code."
user_zipcode = gets.chomp.to_i
api_key = 'c44c46161f9c4f8a'
url = "http://api.wunderground.com/api/#{api_key}/forecast10day/q/#{user_zipcode}.json"

response = HTTParty.get(url)
#data = JSON.parse!(response.body)

10.times do |i|
day = response['forecast']['txt_forecast']['forecastday'][i]['title']
conditions = response['forecast']['txt_forecast']['forecastday'][i]['fcttext']
puts "Conditions for #{day}: #{conditions}"
puts ""
end
#puts Json2html.new.to_html(data)
#puts JSON.pretty_generate(response)
