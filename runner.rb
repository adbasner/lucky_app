require 'unirest.rb'

response1 = Unirest.get("http://localhost:3000/random_fortune_url")
response2 = Unirest.get("http://localhost:3000/lotto_numbers_url")

p response1.body
p response2.body