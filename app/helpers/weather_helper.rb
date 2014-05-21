module WeatherHelper
  def wind_direction(wind_direction)

    direction = wind_direction.blank? ? "" : wind_direction.to_f
    if direction.is_a?(Numeric)
      if (direction >= 348.75 && direction <= 360) || (direction >= 0 && direction <= 11.25)
        "N"
      elsif direction > 11.25 && direction < 33.75
        "NNE"
      elsif direction >= 33.75 && direction <= 56.25
        "NE"
      elsif direction > 56.25 && direction < 78.75
        "ENE"
      elsif direction >= 78.75 && direction <= 101.25
        "E"
      elsif direction > 101.25 && direction < 123.75
        "ESE"
      elsif direction >= 123.75 && direction <= 146.25
        "SE"
      elsif direction > 146.25 && direction < 168.75
        "SSE"
      elsif direction >= 168.75 && direction <= 191.25
        "S"
      elsif direction > 191.25 && direction < 213.75
        "SSW"
      elsif direction >= 213.75 && direction <= 236.25
        "SW"
      elsif direction > 236.25 && direction < 258.75
        "WSW"
      elsif direction >= 258.75 && direction <= 281.25
        "W"
      elsif direction > 281.25 && direction < 303.75
        "WNW"
      elsif direction >= 303.75 && direction <= 326.25
        "NW"
      elsif direction > 326.25 && direction < 348.75
        "NNW"
      else
        ""
      end
    else
      ""
    end
  end

  def average_temperature(low, high)
    (low.to_f + high.to_f)/2
  end
end
