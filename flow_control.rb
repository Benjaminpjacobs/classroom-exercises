# require 'byebug'

#Basic Puts/Gets
puts "Type your message"
input = gets.chomp
puts "#{input}"

#Basic Branching

puts "Type your message"
input = gets.chomp
input.length.even? ? puts("EVEN") : puts("ODD")

#Multi-pronged Branching

vowels = %w(a e i o u)
puts "Type your message"
input = gets.chomp
if input[-1] == 'y'
  puts "DON'T KNOW!"
elsif input[-1].count('aeiou') > 0
  puts "VOWEL!"
else
  puts "CONSONANT!"
end

#Easy Looping

5.times do
puts "Lines"
end

#Looping with a Condition
5.times do |index|
  if index.even?
    puts "Line is even"
  else
    puts "Line is odd"
  end
end


#Three Loops

i = 1
5.times do 
  puts "This is my output line #{i}"
  i += 1
end

i = 1
while i < 6
   puts "This is my output line #{i}"
  i += 1
end

i = 1
until i > 5
     puts "This is my output line #{i}"
  i += 1
end

#Rando-Guesser
secret_number = (1..10).to_a.sample
puts "(The secret number is #{secret_number})"
guess = (1..10).to_a.sample
while guess != secret_number
  puts "Guess again!"
  guess = (1..10).to_a.sample
  puts "Guess is #{guess}"
end
puts "You Win!"

secret_number = (1..10).to_a.sample
puts "(The secret number is #{secret_number})"
guess = rand(10)
puts "Guess is #{guess}"
until guess == secret_number
  puts "Guess again!"
  guess = rand(10)
  puts "Guess is #{guess}"
end
puts "You Win!"



