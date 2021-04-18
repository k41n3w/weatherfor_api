# frozen_string_literal: true

class TweetCreator
  def initialize(message)
    @message = message
  end

  def send_tweet
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = Rails.application.credentials[:CONSUMER_KEY]
      config.consumer_secret     = Rails.application.credentials[:CONSUMER_SECRET]
      config.access_token        = Rails.application.credentials[:ACCESS_TOKEN]
      config.access_token_secret = Rails.application.credentials[:ACCESS_TOKEN_SECRET]
    end
    client.update(@message)
  end
end
