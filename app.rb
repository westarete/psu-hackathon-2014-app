require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'geocoder'

get '/' do
  @location = Geocoder.search(params[:location]).first 
  erb :index
end
