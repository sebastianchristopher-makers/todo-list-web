require 'sinatra/base'
require_relative 'lib/todolist'
require_relative 'views/helper'


class ToDoListApp < Sinatra::Base

  $todolist = ToDoList.new

  get '/' do
    'Hello world'
  end

  get '/todolist' do
    @list = $todolist.list
    p @list
    erb(:todo_list)
  end

  post '/todolist' do
    name = params['name']
    $todolist.tick_off(name)
    redirect('/todolist')
  end

  post '/add-item' do
    item = ToDo.new(params['name'], params['deadline'])
    $todolist.add(item)

    redirect('/todolist')
  end

  get '/add-item-input' do
    erb :add_item
  end

  run! if app_file == $0
end
