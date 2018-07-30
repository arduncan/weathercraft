class WeatherController < ApplicationController
  def index
  end

  def show
    @lat = params[:lat]
    @lng = params[:lng]
    @location = "#{params[:city]}, #{params[:state]}"
  end
end