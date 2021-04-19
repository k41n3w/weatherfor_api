# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Weatherfors', type: :request do
  describe 'Post /post_weather_on_twitter' do
    it 'returns http success' do
      params = {
        post: {
          city_name: 'Caconde',
          api_key: Rails.application.credentials[:WEATHER_API_KEY]
        }
      }

      post '/weatherfors/post_weather_on_twitter', params: params

      expect(response).to have_http_status(:created)
    end
  end
end
