require './lib/node'
require 'pry'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(new_data)
    if @head != nil
      find_last_node.next_node = Node.new(new_data)
    else
      @head = Node.new(new_data)
    end
  end

  def find_last_node(node= @head)
    return node if !node.next_node
    find_last_node(node.next_node)
  end

  def count
    [@head.data].count
  end

  # Need to fix this logic to iterate over more than two nodes
  def to_string
    node = @head
    if node.next_node == nil
      node.data
    else
      node.data + " " + node.next_node.data
    end
  end
end

require './lib/linked_list'
list = LinkedList.new
list.append('doop')
list.append('deep')
