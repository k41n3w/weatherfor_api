# frozen_string_literal: true

class WeatherforsController < ApplicationController
  def post_weather_on_twitter
    TweetCreator.new(avg_temp_text).send_tweet

    render json: { message: 'Posted' }, status: :created
  end

  private

  def post_params
    params.require(:post).permit(:city_name, :api_key)
  end

  def avg_temp_text
    city    = I18n.transliterate(post_params['city_name'])
    api_key = post_params['api_key']

    Weatherfor::ApiConsultant.new(city, api_key).weather_in_days
  end
end
