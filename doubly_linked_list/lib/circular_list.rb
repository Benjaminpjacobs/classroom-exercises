require './lib/node'
require 'pry'

class CircList
  attr_reader :head
  def initialize
    @head = nil
  end
  def append(node)
    if @head.nil?
      @head = node 
    else
      add_node(node)
    end
    connect_circle(node)
  end

  def add_node(node)
    node.backward = find_next_node
    find_next_node.forward = node
  end

  def connect_circle(node)
    node.forward = @head
    @head.backward = node
  end

  def find_next_node
    current_node = @head
    until current_node.forward == @head
      current_node = current_node.forward
    end
    current_node
  end

  def inspect
    collect_data.join(', ')
  end

  def collect_data(current_node=@head, data=[])
    until current_node.forward == @head
      data << current_node.data
      current_node = current_node.forward
    end
    data << current_node.data
  end

  def count(current_node=@head)
    count = 1
    until current_node.forward == @head
      current_node = current_node.forward
      count += 1
    end
    count
  end

  def include?(value, current_node=@head)
    until current_node.data == value || current_node.forward == @head
      current_node = current_node.forward
    end
    current_node.data == value
  end

  def pull(value)
    @head = @head.forward if @head.data == value
    node = @head
    until node.data == value
      node = node.forward
    end
    remove_and_relink(node)
  end

  def remove_and_relink(node)
    node.backward.forward = node.forward
    node.forward.backward = node.backward
  end

end