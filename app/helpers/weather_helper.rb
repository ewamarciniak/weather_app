module WeatherHelper
  def wind_direction(wind_direction)
    direction = wind_direction.blank? ? "" : wind_direction.to_i
    if direction == 0 || direction == 360
      "N"
    elsif direction > 0 && direction < 90
      "NE"
    elsif direction == 90
      "E"
    elsif direction > 90 && direction < 180
      "SE"
    elsif direction == 180
      "S"
    elsif direction > 180 && direction < 270
      "SW"
    elsif direction == 270
      "W"
    elsif direction > 270 && direction < 360
      "NW"
    else
      ""
    end
  end

  def average_temperature(low, high)
    (low.to_f + high.to_f)/2
  end
end
