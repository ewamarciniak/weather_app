require 'test_helper'

class WeatherControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get localized_weather" do
    get(:show, {'city' => 'Dublin', 'units' => 'C'})
    assert_response :success
  end
end
