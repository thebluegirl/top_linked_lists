class LinkedList
  attr_accessor :head, :tail
  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    @tail = Node.new(value)
  end
end

class Node
  def initialize(value=nil)
    @value = value
    @next_node = nil
  end
end