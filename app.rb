require 'sinatra'
require './lib/item'
require './lib/items_repository'

get '/' do
  erb :index
end

get '/items' do
  filter = params[:filter]
  if filter
    ItemsRepository.new.items.each do |item|
      if item.name.downcase.include? filter.downcase
        @displayed_items << item
      end
    end
  else
    @displayed_items = ItemsRepository.new.items
  end
  erb :items
end
