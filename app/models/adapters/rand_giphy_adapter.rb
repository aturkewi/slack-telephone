module Adapters
  class RandGiphyAdapter


    def connection
      @connection = Adapters::GiphyConnection.new
    end

    def get_random_giphy(search_string)
      search_term = modify_search_term(search_string)
      giphy_object = connection.query(search_term)
      giphy_object['data']["image_url"]
    end

    def modify_search_term(search_string)
      search_term_array = search_string.split(" ")
      search_term_array.shift
      search_term_array.join("+")
    end
  end
end

