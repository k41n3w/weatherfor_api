require 'rails_helper'

RSpec.describe 'Weatherfors', type: :request do
  describe 'POST #post_weather_on_twitter' do
    subject { post '/weatherfors/post_weather_on_twitter', params: params }

    context 'with success' do
      let!(:params) do
        {
          post: {
            city_name: 'Caconde',
            api_key: Rails.application.credentials[:WEATHER_API_KEY]
          }
        }
      end

      let!(:api_consultant) { instance_double(Weatherfor::ApiConsultant) }
      let!(:tweet_creator_instance) { instance_double(TweetCreator) }

      before do
        allow(Weatherfor::ApiConsultant).to receive(:new).and_return(api_consultant)
        allow(TweetCreator).to receive(:new).and_return(tweet_creator_instance)
        allow(api_consultant).to receive(:weather_in_days)
        allow(tweet_creator_instance).to receive(:send_tweet)
      end

      it 'returns success code' do
        subject

        expect(response).to have_http_status :created
      end

      it 'returns message success' do
        subject

        expect(JSON.parse(response.body, symbolize_names: true)[:message]).to eq 'Posted'
      end
    end
  end
end
