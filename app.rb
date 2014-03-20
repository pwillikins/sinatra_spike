require 'sinatra'
require './lib/item'
require './lib/items_repository'

get '/' do
  erb :index
end

get '/items' do
  erb :items_list
end