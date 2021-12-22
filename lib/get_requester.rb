require 'net/http'
require 'open-uri'
require 'json'

class GetRequester

    attr_accessor :url

    def initialize(url)
        @url = url
    end

    def get_response_body
        #sends GET request to URL
        uri = URI.parse(self.url)
        response = Net::HTTP.get_response(uri)
        #returns body of response
        response.body
    end

    def parse_json
        #returns Ruby array or hash from response data
        JSON.parse(self.get_response_body)
    end

end