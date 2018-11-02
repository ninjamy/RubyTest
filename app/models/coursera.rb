class Coursera 
	include HTTParty

	base_uri 'https://api.github.com/users'
	#default_params fields: "smallIcon,shortDescription", q: "search"
	format :json

	def self.for term
		get("/" + term)
	end
end
