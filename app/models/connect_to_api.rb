require 'net/http'
require 'rexml/document'
include REXML

class ConnectToApi
  attr_accessor :retrieve_info

  LOCATION_CODES = {
      "Belfast" => "44544",
      "Cork" => "560472",
      "Dublin" => "560743"
  }

  def pull_weather_info(city, units)

    # using Yahoo API
    unit_parameter = (units =='C' || units =="" ) ? '&u=c' : ''
    url = 'http://weather.yahooapis.com/forecastrss?w=' + LOCATION_CODES[city] + unit_parameter

    # getting the XML data as a string
    xml_data = Net::HTTP.get_response(URI.parse(url)).body

    # extracting the information
    doc = Document.new(xml_data)

    return doc.root.elements["channel"]
  end
end
