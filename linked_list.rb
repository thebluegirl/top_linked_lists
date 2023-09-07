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

  def pop
    return_value = @tail
    @tail = self.at(size-2)
    @tail.next_node = nil
    @size -= 1
    return return_value
  end

  def contains?(value)
    indexed_size = @size - 1
    while indexed_size >= 0
      if value == self.at(indexed_size).value
        return true
      end
      indexed_size -= 1
    end
    return false
  end

  def find(value)
    index = 0
    location = self.head
    while index < @size
      return index if location.value == value
      location = location.next_node
      index += 1
    end
    return nil
  end

  def to_s
    string_rep = ""
    location = self.head
    until location.nil?
      string_rep << "( #{location.value} ) -> "
      location = location.next_node
    end
    string_rep << "nil"
    return string_rep
  end

  def insert_at(value, index)
    inserted_value = Node.new(value)
    inserted_value.next_node = self.at(index)
    self.at(index - 1).next_node = inserted_value
  end
end

class Node
  attr_reader :value
  attr_accessor :next_node
  def initialize(value=nil)
    @value = value
    @next_node = nil
  end
end
