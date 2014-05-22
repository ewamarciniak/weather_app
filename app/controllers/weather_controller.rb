class WeatherController < ApplicationController
  def index
  end

  def show
    api_connection = ConnectToApi.new
    @retrieved_data = api_connection.pull_weather_info(params["city"], params["units"])
  end
end
