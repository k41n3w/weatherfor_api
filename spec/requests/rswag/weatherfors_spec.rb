# frozen_string_literal: true

require 'swagger_helper'

describe 'Weatherfors' do
  path '/weatherfors/weather_in_days' do
    get 'Busca informações metereologicas atual e média para próximos 5 dias' do
      tags 'weatherfors'
      description 'Informacoes'

      produces 'application/json'

      response '200', 'Informações Exibidas Com Sucesso!' do
        run_test!
      end
    end
  end
end
