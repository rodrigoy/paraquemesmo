require 'rubygems'
require 'sinatra'
require 'erb'
require File.dirname(__FILE__) + '/lib/paraque'

set :views, File.dirname(__FILE__) + '/views'

get '/' do
  @paraque = Paraque.mesmo?
  erb :index
end



