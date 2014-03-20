require 'sinatra'
require './item'
require './items_repository'

get '/' do
  erb :index
end

get '/items' do
  erb :items_list
end