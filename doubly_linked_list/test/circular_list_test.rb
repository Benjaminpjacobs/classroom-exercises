require 'minitest/autorun'
require 'minitest/pride'
require './lib/circular_list'
require 'pry'

class CircListTest < Minitest::Test
  def test_it_exists
    c = CircList.new
    assert_instance_of CircList, c
  end
  def test_it_is_initialized_with_head_nil
    c = CircList.new
    assert_nil c.head
  end
  def test_it_can_add_head_node
    c = CircList.new
    assert_nil c.head
    c.append(Node.new)
    assert_instance_of Node, c.head
  end
  def test_it_can_add_second_node
    c = CircList.new
    assert_nil c.head
    c.append(Node.new)
    assert_instance_of Node, c.head
    c.append(Node.new)
    assert c.head.forward
  end
  def test_it_can_be_foward_circular
    c = CircList.new
    assert_nil c.head
    c.append(Node.new("head"))
    c.append(Node.new("tail"))
    assert_equal "head", c.head.forward.forward.data
  end
  def test_it_can_append_three
    c = CircList.new
    assert_nil c.head
    c.append(Node.new("head"))
    c.append(Node.new)
    c.append(Node.new("tail"))
    # binding.pry
    assert_equal "head", c.head.forward.forward.forward.data
  end
  def test_it_can_go_backward_circular
    c = CircList.new
    c.append(Node.new("head"))
    c.append(Node.new)
    c.append(Node.new("tail"))
    # binding.pry
    assert_equal "tail", c.head.backward.data
  end
  def test_it_can_move_in_both_directions
    c = CircList.new
    c.append(Node.new("head"))
    c.append(Node.new("almost_head"))
    c.append(Node.new("almost_tail"))
    c.append(Node.new("tail"))
    # binding.pry
    assert_equal "almost_tail", c.head.backward.backward.data
  end
  def test_it_can_output_linear_representation_of_data
    c = CircList.new
    c.append(Node.new("head"))
    c.append(Node.new("almost_head"))
    c.append(Node.new("middle"))
    c.append(Node.new("almost_tail"))
    c.append(Node.new("tail"))
    expected = "head, almost_head, middle, almost_tail, tail"
    actual = c.inspect
    assert_equal expected, actual
  end
  def test_it_can_count_nodes
    c = CircList.new
    c.append(Node.new("head"))
    c.append(Node.new("almost_head"))
    c.append(Node.new("middle"))
    c.append(Node.new("almost_tail"))
    c.append(Node.new("tail"))
    expected = 5
    actual = c.count
    assert_equal expected, actual
  end
  def test_it_can_find_value
    c = CircList.new
    c.append(Node.new("head"))
    c.append(Node.new("almost_head"))
    c.append(Node.new("middle"))
    c.append(Node.new("almost_tail"))
    c.append(Node.new("tail"))
    assert c.include?("almost_tail")
    refute c.include?("bigfoot")
  end
  def test_it_can_pull
    c = CircList.new
    c.append(Node.new("head"))
    c.append(Node.new("almost_head"))
    c.append(Node.new("middle"))
    c.append(Node.new("almost_tail"))
    c.append(Node.new("tail"))
    c.pull("middle")
    # binding.pry
    expected = "almost_tail"
    actual = c.head.forward.forward.data
    assert_equal expected, actual 
    expected = "almost_head"
    actual = c.head.backward.backward.backward.data
    assert_equal expected, actual
  end
  def test_it_can_pul_head
    c = CircList.new
    c.append(Node.new("head"))
    c.append(Node.new("almost_head"))
    c.append(Node.new("middle"))
    c.append(Node.new("almost_tail"))
    c.append(Node.new("tail"))
    c.pull("head")
    # binding.pry
    assert_equal "almost_head", c.head.data
  end
end
