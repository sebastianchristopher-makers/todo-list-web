class ToDo
  attr_reader :name, :deadline, :complete
  def initialize(name, deadline = nil)
    @name = name
    @deadline = deadline
    @complete = false
  end

  def tick_off
    @complete = true
  end
end
