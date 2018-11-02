require 'httparty'
require 'pp'

class Coursera 
	include HTTParty

	base_uri  'http://api.airvisual.com/v2/states?'
	default_params key: "7Qmax99oSg4SyMFTj"
	format :json

	def self.for term
		get("", query: {country: term})["data"]
		#get("")["docs"]
	end
end


pp Coursera.for "USA"

