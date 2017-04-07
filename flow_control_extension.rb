values = (1..1000).to_a.shuffle
found = false
marker = 0
x = 10

values.each do |value|
  if value == x
    found = true
    break
  else
    marker += 1
  end
end

for marker in 0..1000
  if values[marker] == x
  found = true 
  break
  end
end

10001.times do
  if values[marker] == x
    found = true
    break
  else
    marker += 1
  end
end

found ? p("Number was found") : p("Number wasn't found")
