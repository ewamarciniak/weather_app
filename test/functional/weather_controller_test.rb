require 'test_helper'

class WeatherControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get localized_weather" do
    get(:localized_weather, {'city' => 'Dublin'})
    assert_response :success
  end
end
