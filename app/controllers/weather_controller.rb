class WeatherController < ApplicationController
  def index
    api_connection = ConnectToApi.new
    @retrieved_data = api_connection.pull_weather_info("Dublin")
  end
end
