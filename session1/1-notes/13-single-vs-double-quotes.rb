# There are two ways to represent a literal String in Ruby: With double quotes ( "" ) or single quotes ( '' ).
# With double quotes, you can place special sequences, like newlines (\n) in the string that will be converted.
# With single quotes, the string comes out just as it's typed.

puts "Here's\nTwo lines."
puts 'This will\nonly be one line'

  # Output:
  # Here's
  # Two lines.
  # This will\nonly be one line

  #this is string interpolation: "Hi, my name is#{my_name}" but for this you have to use double quotes, with single quotes it is just read as text exactly
