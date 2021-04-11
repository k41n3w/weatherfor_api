class WeatherforsController < ApplicationController
  def weather_in_days
    render json: { message: Weatherfor::ApiConsultant.new('Caconde', '09b0fa85cf2627ed64bb823a7e79d5bb').weather_in_days }, status: :ok
  end
end
