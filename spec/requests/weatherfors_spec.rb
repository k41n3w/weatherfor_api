require 'rails_helper'

RSpec.describe 'Weatherfors', type: :request do
  describe 'GET /weather_in_days' do
    it 'returns http success' do
      get '/weatherfors/weather_in_days'
      p response.body
      expect(response).to have_http_status(:success)
    end
  end
end
