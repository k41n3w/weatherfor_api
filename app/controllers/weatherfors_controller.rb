# frozen_string_literal: true

class WeatherforsController < ApplicationController
  def weather_in_days
    gem_text = Weatherfor::ApiConsultant.new('Caconde', '09b0fa85cf2627ed64bb823a7e79d5bb').weather_in_days

    render json: { message: gem_text }, status: :ok
  end

  def post_weather_in_days
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = Rails.application.credentials[:CONSUMER_KEY]
      config.consumer_secret     = Rails.application.credentials[:CONSUMER_SECRECT]
      config.access_token        = Rails.application.credentials[:ACCESS_TOKEN]
      config.access_token_secret = Rails.application.credentials[:ACCESS_TOKEN_SECRET]
    end

    client.update(Weatherfor::ApiConsultant.new('Caconde', '09b0fa85cf2627ed64bb823a7e79d5bb').weather_in_days)

    render json: { message: 'Posted' }, status: :ok
  end
end
