# frozen_string_literal: true

Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  post 'weatherfors/post_weather_on_twitter'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
