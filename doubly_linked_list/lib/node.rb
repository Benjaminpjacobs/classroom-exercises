class Node
  attr_accessor :data, :forward, :backward

  def initialize(data=nil, forward=nil, backward=nil)
    @data = data
    @forward = forward
    @backward = backward
  end
end