require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'geocoder'
require 'forecast_io'

MultiJson.use(:json_pure)

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
  @location = Geocoder.search(params[:location]).first
  start_time = Time.now + 1*60*60
  lunch_time = Time.now + 5*60*60
  end_time = Time.now + 10*60*60
  @forecast_start = ForecastIO.forecast(@location.latitude, @location.longitude, :time => start_time.to_i)
  @forecast_lunch = ForecastIO.forecast(@location.latitude, @location.longitude, :time => lunch_time.to_i)
  @forecast_end   = ForecastIO.forecast(@location.latitude, @location.longitude, :time => end_time.to_i)
  erb :index
end

