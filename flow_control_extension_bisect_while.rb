# require 'pry'
values = (1..10000).to_a.sample(1000).sort
t = rand(1000)
not_found = true

while not_found && !(values.empty?)
  b = values.length/2
  shift_val = b > 0 ? b : 1
  m = values[b]
  # binding.pry
  if t == m 
    not_found = false
  elsif t < m
    values.pop(shift_val)
  elsif t > m
    values.shift(shift_val)
  end
end


p not_found ? "value was not found" : "value was found"

