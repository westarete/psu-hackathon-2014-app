require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'geocoder'
require 'forecast_io'

MultiJson.use(:json_pure)

ForecastIO.api_key = ENV['FORECAST_API_KEY'] or raise "Set the FORECAST_API_KEY environment variable"

get '/' do
  @location = Geocoder.search(params[:location]).first
  @forecast = ForecastIO.forecast(@location.latitude, @location.longitude)
  erb :index
end
