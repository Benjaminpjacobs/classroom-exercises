# gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/banana_stand.rb'

class BananaStandTest < Minitest::Test
  def test_it_exists
    stand = BananaStand.new
    assert_instance_of BananaStand, stand
  end
  def test_is_it_open
    stand = BananaStand.new
    refute stand.open?

  end

end

