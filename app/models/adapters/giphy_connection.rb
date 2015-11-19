module Adapters
  class GiphyConnection
    include HTTParty

    attr_reader :connection

    def initialize
      @connection = self.class
    end

    def query(search_terms)
      results = connection.get("http://api.giphy.com/v1/gifs/random?api_key=dc6zaTOxFJmzC&tag=" + search_terms)
    end
  end
end
