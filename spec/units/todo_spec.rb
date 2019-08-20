require 'todo'
describe ToDo do
  it 'has a name' do
    todo = ToDo.new('Buy milk')
    expect(todo.name).to eq('Buy milk')
  end
  context 'it has an optional deadline' do
    it 'can have a deadline' do
      todo = ToDo.new('Buy milk', 'Thursday')
      expect(todo.deadline).to_not be_nil
    end
    it 'can not have a dealine' do
      todo = ToDo.new('Buy milk')
      expect(todo.deadline).to be_nil
    end
  end
  context 'it is complete or incomplete' do
    it 'is incomplete' do
      todo = ToDo.new('Buy milk')
      expect(todo.complete).to be(false)
    end
    it 'cna be marked complete' do
      todo = ToDo.new('Buy milk')
      todo.tick_off
      expect(todo.complete).to be(true)
    end
  end
end
