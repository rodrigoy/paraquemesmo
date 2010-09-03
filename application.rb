require 'rubygems'
require 'sinatra'
require 'erb'
require File.dirname(__FILE__) + '/lib/para_que'

set :views, File.dirname(__FILE__) + '/views'

get '/' do
  @paraque = ParaQue.mesmo?
  erb :index
end



