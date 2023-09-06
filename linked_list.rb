class LinkedList
  attr_accessor :head, :tail, :size
  def initialize
    @head = nil
    @tail = nil
    @size = 0
  end

  def append(value)
    @size += 1
    if self.tail != nil
      @tail.next_node = Node.new(value)
      @tail = @tail.next_node
    else
      @tail = Node.new(value)
    end

    if @size == 1
      @head = @tail
    end
    return @tail
  end

  def prepend(value)
    @size += 1
    if self.head != nil
      next_node = self.head
      @head = Node.new(value)
      @head.next_node = next_node
    else
      @head = Node.new(value)
    end

    if @size == 1
      @tail = @head
    end
    return @head
  end

  def at(index)
    return_value = self.head
    until index == 0
      return_value = return_value.next_node
      index -= 1
    end
    return return_value
  end
end

class Node
  attr_accessor :next_node
  def initialize(value=nil)
    @value = value
    @next_node = nil
  end
end
