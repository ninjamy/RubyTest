class Coursera 
	include HTTParty

	#base_uri 'https://api.github.com/users'
	base_uri  'http://api.airvisual.com/v2/states?'
	default_params key: "7Qmax99oSg4SyMFTj"
	#7Qmax99oSg4SyMFTj
	format :json

	def self.for term
		get("", query: {country: term})["data"]
		#get("/" + term)["elements"]
	end
end
