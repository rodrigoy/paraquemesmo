require 'rubygems'
require 'sinatra'
require 'haml'
require File.dirname(__FILE__) + '/lib/para_que'

set :views, File.dirname(__FILE__) + '/views'

get '/' do
  @paraque = ParaQue.mesmo?
  haml :index
end



