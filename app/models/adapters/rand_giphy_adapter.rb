module Adapters
  class RandGiphyAdaper


    def connection
      @connection = Adapters::GiphyConnection.new
    end

    def get_random_giphy(search_string)
      search_term_array = search_string.split(" ")
      search_term = search_term_array.shift.join("+")
      giphy_object = connection.query(search_term)
    end
  end
end

