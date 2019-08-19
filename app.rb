require 'sinatra/base'
require_relative 'lib/todolist'
class ToDoListApp < Sinatra::Base

  @todolist = ToDoList.new

  get '/' do
    'Hello World'
  end

  get '/todolist' do

  end

  post '/add-item' do
    item = params['item']
    
    redirect('/todolist')
  end

  get '/add-item-input' do
    erb :add_item
  end

  run! if app_file == $0
end
