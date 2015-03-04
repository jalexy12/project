# require 'faraday'


# conn = Faraday.new(:url => 'https://zilyo.p.mashape.com') do |faraday|
#   faraday.request  :url_encoded             # form-encode POST params
#   faraday.response :logger                  # log requests to STDOUT
#   faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
# end

# response = conn.get do |req|                           # GET http://sushi.com/search?page=2&limit=100
#   req.url '/search', { latitude: lat, longitude: lon }
#   req.headers['X-Mashape-Key'] = "tXnQCZACTdmshnoQ9AKPzkcoytDvp1Y58D4jsnjfW1s8PmfvJh"
#   req.headers['Accept'] = 'application/json'
# end

# p response.body

require 'httparty'
require 'json'

class Zilyo
    include HTTParty

    base_uri 'https://zilyo.p.mashape.com'
    headers 'Accept' => 'application/json'

    def initialize(zilyo_key)
    	self.class.headers('X-Mashape-Key' => zilyo_key)
    end

    def search(query)
    	self.class.get('/search', :query => query)
    end
end

zilyo = Zilyo.new("tXnQCZACTdmshnoQ9AKPzkcoytDvp1Y58D4jsnjfW1s8PmfvJh")
response = zilyo.search({ latitude: '25.763181', longitude: '-80.19101899999998' })
p JSON.parse(response.body)


