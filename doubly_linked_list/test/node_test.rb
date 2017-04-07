require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'

class NodeTest < Minitest::Test
  def test_it_exists
    n = Node.new
    assert_instance_of Node, n
  end
  def test_it_has_forward_backward_data
    n = Node.new("test_data", "test_forward", "test_backward")
    assert_equal "test_data", n.data
    assert_equal "test_forward", n.forward
    assert_equal "test_backward", n.backward
  end
  def method_name
    
  end
end