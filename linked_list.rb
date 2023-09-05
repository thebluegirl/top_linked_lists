class LinkedList
  attr_accessor :head, :tail
  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    @tail = Node.new(value)
  end

  def prepend(value)
    if self.head != nil
      next_node = self.head
      @head = Node.new(value)
      @head.next_node = next_node
      return @head
    else
      return @head = Node.new(value)
    end
  end
end

class Node
  attr_accessor :next_node
  def initialize(value=nil)
    @value = value
    @next_node = nil
  end
end