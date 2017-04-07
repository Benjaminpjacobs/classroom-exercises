x = 10
puts "x is #{x}"
x = 20
puts  "x is #{x}"
#=> x is 10 / x is 20


=begin
In this trivial example x is functioning as a local variable. 
So far we have not added any methods, classes, blocks, or other structures that would create additional scopes
So x is currently defined in the “global” or top-level scope.
=end

def print_doubled_value(x)
  puts "double the value #{x} is #{x * 2}"
end

print_doubled_value(x)

#=> x is 10/ x is 20/ double the value 20 is 40

y = 27
print_doubled_value(y)

#=> x is 10/ x is 20/ double the value 20 is 40 / double the value 27 is 54
#inside the confines of the method a new scope is created with new independent variables
#other values of x out the method are not available inside the method, they are superceded


----------------------------------
x = 10
puts "x is #{x}"
x = 20
puts  "x is #{x}"
#=> x is 10 / x is 20

def print_doubled_value(x)
  orig = x
  x = x * 2
  puts "double the value #{orig} is #{x}"
  puts  "inner x is now #{x}"
end

print_doubled_value(x) #=> double value of 20 is now 40/ inner x is now 40
puts "outer x is still #{x}" #=> outer x is still 20

--------------------------------------
x = 20
a = 4
b = 12

def combined_variables(x)
  puts "inner x is #{x}" #<= x is representing the value of a
  puts "and outer b is #{b}" #<= undefined variable b because it's not in the scope of the method
end

combined_variables(a)

--------------------------------------
x = 20
a = 4
b = 12

def combined_variables(x)
  a = "pizza"
  puts a
end

combined_variables(a) #=> pizza

---------------------------------------

#WHAT CAN OTHER METHODS ACCESS

x = 20
a = 4
b = 12

def combine_variables(x)
  puts "inner x is #{x}"
  puts "outer v is #{b}"   #<= accessing the method but not the variable. variable b is in parents scope. method b is a sibling method.
  b = "pizza"              #<= local scope takes prescendence over sibiling METHODS 
  puts "but b is now:#{b}" #<= returns value of local scope
end

def b
  12
end

combine_variables(a)

--------------------------

#SCOPE IN BLOCKS

[1,2,3].each do |num|
  puts "num is #{num}"
end

#=>num is 1 / num is 2 / num is 3

puts num  #<= will throw undefined variable error

---------------------------

creatures = %(unicorn hippogriff bowtruckle)
heroine = "Luna"

def battleing_technique
  ["heroically", "clumsily", "cleverly"].sample
end

creates.each do |c|
  puts "#{heroine} battles #{c} #{battling_technique}"
end

#block creates a CLOSURE. The closure folds in the variables created at the parent scope allowing the code
#withing the block to pull in heroine and battling techniques

--------------------------------

new_creatures = ["dragon", "manticore"]
villian = "HeWhoWillNotBeNamed"
hero = "meh"

new_creatures.each do |villian|
  hero = "Neville" #<= this will supercede the hero from the parent scope
  puts "this time the villian is #{villian} and the hero is #{hero}" #<= villian is superceded by the block item from the iteration
end

puts "hero is #{hero}" #<= because we have access the scope outside the block, we can change the outer variables within the block
                       #<= this will returen Neville NOT "meh"

--------------------------------





