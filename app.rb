require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'geocoder'
require 'forecast_io'

# Make sure we're using a gem that works on both Mac and Windows.
MultiJson.use(:json_pure)

# Set our API key for talking to forecast.io
ForecastIO.api_key = ENV['FORECAST_API_KEY'] or raise "Set the FORECAST_API_KEY environment variable"

helpers do
  # Given a forecast, return a string to represent the type of attire that should be worn.
  def attire(forecast)
    if forecast.currently.temperature < 40
      "hat"
    elsif forecast.currently.precipProbability >= 0.5
      "raincoat"
    else
      "tshirt"
    end
  end
end

get '/' do
  # Find the lat/lon of the given location.
  @location = Geocoder.search(params[:location]).first

  # Figure out what times we'll use to fetch forecasts.
  start_time = Time.now.to_i + 1*60*60
  lunch_time = Time.now.to_i + 5*60*60
  end_time = Time.now.to_i + 10*60*60

  # Get the forecasts.
  @forecast_start = ForecastIO.forecast(@location.latitude, @location.longitude, :time => start_time)
  @forecast_lunch = ForecastIO.forecast(@location.latitude, @location.longitude, :time => lunch_time)
  @forecast_end   = ForecastIO.forecast(@location.latitude, @location.longitude, :time => end_time)

  # Render the view.
  erb :index
end

