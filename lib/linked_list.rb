class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(new_data)
    @head = Node.new(new_data)
  end

  def count
    [@head.data].count
  end

  def to_string
    @head.data.to_s
  end

end

require './lib/linked_list'
require './lib/node'
list = LinkedList.new
