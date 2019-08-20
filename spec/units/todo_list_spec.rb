require 'todolist'
describe ToDoList do
  let(:todo) { double(:todo, name: 'Buy ants', tick_off: true) }
  let(:todo_class) { double(:todo_class, new: todo) }
  subject(:subject) { described_class.new(todo_class) }

  it 'can check there is something in the list' do
    expect(subject.list).to_not be_empty
  end
  it 'can add items to the list' do
    item = todo
    subject.add(item)
    expect(subject.list).to include(item)
  end
  it 'can tick items as complete' do
    item = todo
    subject.add(item)
    expect(item).to receive(:tick_off)
    subject.tick_off('Buy ants')
  end
end
