students = %w(hermoine harry ron neville)

students.each do |student| 
  p student.capitalize 
end

numbers = [1,2,3,4,5,6]

#excercises

#doubles and triples
numbers.each do |number| 
  puts number * 2
end

numbers.each do |number| 
  puts number * 3
end

#evens and odds

numbers.each do |number| 
  puts number if number.odd?
end

numbers.each do |number| 
  puts number if number.even?
end


#new array of multiplied by 2

times_two = numbers.each do |number| 
  puts number * 2
end


#array of first and last names

names = ["Ilana Corson", "Lauren Fazah", "Beth Sebian"]

#first names
names.each do |name|
  puts name.split[0]
end

#last names
names.each do |name|
  puts name.split[1]
end

#initials
names.each do |name|
  puts name.split[0][0] + name.split[1][0]
end

#only last name and character number
names.each do |name|
  if name == names.last
    puts "#{name.length} characters are in the name #{name}"
  end
end

#integer of total characters
x = 0
names.each do |name|
  x += name.length
end
puts x

#nested names
names_nested = [['Ilana', 'Corson'], ['Lauren', 'Fazah'], ['Beth', 'Sebian']]

names_nested.each do |name|
  puts name[0] + ' ' + name[1]
end

  
