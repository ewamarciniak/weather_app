class WeatherController < ApplicationController
  def index
  end

  def localized_weather
    api_connection = ConnectToApi.new
    @retrieved_data = api_connection.pull_weather_info(params["city"])
  end
end
