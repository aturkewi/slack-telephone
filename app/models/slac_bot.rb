module SlackMathbot
  class App < SlackRubyBot::App
  end

  module Commands
    class Telephone < SlackRubyBot::Commands::Base
      command 'telephone' do |client, data, _match|
        giphy = Adapters::RandGiphyAdapter.new.get_random_giphy(data.text)
        send_message client, data.channel, "#{giphy} #{client} #{data.channel}"
      end
    end
  end
end


