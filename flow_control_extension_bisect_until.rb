# require 'pry'
values = (1..10000).to_a.sample(1000).sort
t = rand(1000)
found = false

until found || values.empty?
  b = values.length/2
  shift_val = b > 0 ? b : 1
  m = values[b]
  # binding.pry
  if t == m 
    found = true
  elsif t < m
    values.pop(shift_val)
  elsif t > m
    values.shift(shift_val)
  end
end


p found ? "value was found" : "value was not found"

