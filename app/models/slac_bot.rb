module SlackMathbot
  class App < SlackRubyBot::App
  end

  module Commands
    class Telephone < SlackRubyBot::Commands::Base
      command 'telephone' do |client, data, _match|
        send_message client, data.channel, Giphy.random(data.text).image_url
      end
    end
  end
end


