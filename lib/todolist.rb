require_relative './todo'

class ToDoList
  def initialize(todo_class = ToDo)
    @todo_class = todo_class
    @todos = [todo_class.new('Buy milk')]
  end

  def list
    @todos
  end

  def add(item)
    @todos << item
  end

  def tick_off(item_name)
    @todos.select { |todo| todo.name == item_name }.each(&:tick_off)
  end
end
