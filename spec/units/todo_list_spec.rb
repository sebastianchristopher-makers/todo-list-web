require 'todolist'
describe ToDoList do

 it 'can check there is something in the list' do
   todolist = ToDoList.new
   expect(todolist.list).to include('Buy Milk')
 end
end
