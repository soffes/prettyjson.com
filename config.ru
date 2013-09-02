require 'rubygems'
require 'bundler'
Bundler.require

require 'sprockets'
map '/assets' do
  sprockets = Sprockets::Environment.new
  sprockets.append_path 'assets/javascripts'
  sprockets.append_path 'assets/stylesheets'
  run sprockets
end

require './app'
run Sinatra::Application
