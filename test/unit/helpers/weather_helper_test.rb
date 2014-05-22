require 'test_helper'

class WeatherHelperTest < ActionView::TestCase
	test "check if the function returns N direction if 0 degrees" do
    assert_equal "N", wind_direction("0")
  end

  test "check if the function returns N direction if 11.25 degrees" do
    assert_equal "N", wind_direction("11.25")
  end

  test "check if the function returns NNE direction if 33 degrees" do
    assert_equal "NNE", wind_direction("33")
  end

  test "check if the function returns NE direction if 33.75 degrees" do
    assert_equal "NE", wind_direction("33.75")
  end

  test "check if the function returns NE direction if 56.25 degrees" do
    assert_equal "NE", wind_direction("56.25")
  end

  test "check if the function returns ENE direction if 70 degrees" do
    assert_equal "ENE", wind_direction("70")
  end

  test "check if the function returns E direction if 78.75 degrees" do
    assert_equal "E", wind_direction("78.75")
  end

  test "check if the function returns E direction if 101.25 degrees" do
    assert_equal "E", wind_direction("101.25")
  end

  test "check if the function returns ESE direction if 120 degrees" do
    assert_equal "ESE", wind_direction("120")
  end

  test "check if the function returns SE direction if 123.75 degrees" do
    assert_equal "SE", wind_direction("123.75")
  end

  test "check if the function returns SE direction if 146.25 degrees" do
    assert_equal "SE", wind_direction("146.25")
  end

  test "check if the function returns SSE direction if 150 degrees" do
    assert_equal "SSE", wind_direction("150")
  end

  test "check if the function returns S direction if 168.75 degrees" do
    assert_equal "S", wind_direction("168.75")
  end

  test "check if the function returns S direction if 191.25 degrees" do
    assert_equal "S", wind_direction("191.25")
  end

  test "check if the function returns SSW direction if 210 degrees" do
    assert_equal "SSW", wind_direction("210")
  end

  test "check if the function returns SW direction if 213.75 degrees" do
    assert_equal "SW", wind_direction("213.75")
  end

  test "check if the function returns SW direction if 236.25 degrees" do
    assert_equal "SW", wind_direction("236.25")
  end

  test "check if the function returns WSW direction if 245 degrees" do
    assert_equal "WSW", wind_direction("245")
  end

  test "check if the function returns W direction if 258.75 degrees" do
    assert_equal "W", wind_direction("258.75")
  end

  test "check if the function returns W direction if 281.25 degrees" do
    assert_equal "W", wind_direction("281.25")
  end

  test "check if the function returns WNW direction if 295 degrees" do
    assert_equal "WNW", wind_direction("295")
  end

  test "check if the function returns NW direction if 303.75 degrees" do
    assert_equal "NW", wind_direction("303.75")
  end

  test "check if the function returns NW direction if 326.25 degrees" do
    assert_equal "NW", wind_direction("326.25")
  end

  test "check if the function returns NNW direction if 340 degrees" do
    assert_equal "NNW", wind_direction("340")
  end

  test "check if the function returns an empty string if no degrees input" do
    assert_equal "", wind_direction("")
  end

  test "check if the average_temperature function returns an precise average value" do
    assert_equal 17.85, average_temperature(10.5, 25.2)
  end

  test "check if a correct Farenheit link is displayed on the unit changing button when current unit is Celsius" do
    assert_equal 'F', change_unit('C')
  end

  test "check if a correct Celsius link is displayed on the unit changing button when current unit is Farenheit" do
    assert_equal 'C', change_unit('F')
  end

  test "check if unit parameter is set to Celsius in the main menu link when the API request is not made yet" do
    assert_equal 'c', display_correct_unit
  end

  test "check if unit parameter is set to Celsius in the main menu link when previous request result displayed in Celsius" do
    api_connection = ConnectToApi.new
    @retrieved_data = api_connection.pull_weather_info('Dublin', 'c')
    assert_equal 'c', display_correct_unit
  end

  test "check if unit parameter is set to Farenheit in the main menu link when previous request result displayed in Farenheit" do
    api_connection = ConnectToApi.new
    @retrieved_data = api_connection.pull_weather_info('Dublin', 'f')
    assert_equal 'f', display_correct_unit
  end
end
