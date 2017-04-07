require 'pry'

class Fridge
  attr_reader :brand, :color, :temperature, :plugged_in, :contents

  def initialize(brand, color, temperature, plugged_in, contents)
    @brand        = brand
    @color        = color
    @temperature  = temperature
    @plugged_in   = plugged_in
    @contents     = contents
  end

  def temperature_in_celsius  
    (temperature - 32.0) * 5.0/9.0
  end
  
  def add_item(new_item)
    contents << new_item
  end
end

binding.pry
  ""
  # capacity
  # temperature
  # freezer option
  # doors
  # color
  # contents