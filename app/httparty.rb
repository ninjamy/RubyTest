require 'httparty'
require 'pp'

class Coursera 
	include HTTParty

	base_url = 'https://api.github.com/users/'
	#default_params fields: "smallIcon,shortDescription", q: "search"
	format :json

	def self.for term
		get("",query: { query: term})["elements"]
	end
end

pp Coursera.for "ninjamy"

