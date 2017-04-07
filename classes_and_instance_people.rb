require 'pry'

class People
  attr_reader :sex, :height, :weight, :hair_color, :eye_color

  def initialize(sex, height, weight, hair_color, eye_color)
    @sex        = sex 
    @height     = height 
    @weight     = weight 
    @hair_color = hair_color 
    @eye_color  = eye_color 
  end

end

binding.pry
''

