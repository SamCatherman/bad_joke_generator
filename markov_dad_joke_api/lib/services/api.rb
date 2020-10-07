
module Services
  module Api
    extend self
    require 'net/http'
    ENDPOINT = 'https://icanhazdadjoke.com/'

    # fetches a random joke from the Dad Joke Api
    # @return Joke [Hash]
    def fetch_joke
      uri = URI.parse(ENDPOINT)
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true
      data = http.get(uri.request_uri, { 'Accept' => 'application/json' })
      JSON.parse(data.body)
    end
  end
end
