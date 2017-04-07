# require 'pry'

def greeting(f_name, l_name = nil) # <= default setting for method argument
  puts "hello there #{f_name} #{l_name}"
end

greeting("Big")
greeting("Little", "Cow")

def mathing
  x = 1
  y = 2
  result = x + y
  12342359
end

mathing #<= does the math but returns nothing
puts mathing #<= puts the result of running mathing
