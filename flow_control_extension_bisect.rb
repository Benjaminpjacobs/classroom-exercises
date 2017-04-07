# require 'pry'
values = (1..10000).to_a.sample(10000).sort
t = 0
x = values.last
found = false

begin
  values.each do |value|
    # binding.pry
    b = values.length/2
    shift_val = b > 0 ? b : 1
    m = values[b]
    if value == t
      found = true
      break
    elsif value == values.last && t < m
      values.pop(shift_val)
      raise
    elsif value == values.last && t > m
      values.shift(shift_val)
      raise
    end
  end
rescue
  sleep 1
  retry
end

puts found ? "found #{t} in #{values}" : "#{t} does not exist in values #{values}"