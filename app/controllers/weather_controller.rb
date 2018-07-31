require 'net/http'

class WeatherController < ApplicationController
  def index
  end

  def search
    city = params[:search]

    url = 'https://www.metaweather.com/api/location/search/?query=' + city

    response = make_api_request(url)

    @cities = JSON.parse(response.body)
  end

  def forecast
    city_id = params[:id]

    url = 'https://www.metaweather.com/api/location/' + city_id + '/'

    response = make_api_request(url)

    redirect_to root_path unless response.code == '200'

    @forecast = JSON.parse(response.body)
  end

  private
  def make_api_request(url)
    uri = URI.parse(url)
    req = Net::HTTP::Get.new(uri.request_uri)
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = (uri.scheme == "https")
    http.request(req)
  end
end