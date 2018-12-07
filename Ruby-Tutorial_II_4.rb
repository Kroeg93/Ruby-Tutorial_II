# Mutators will change the value within the space in memory
# Immutatables cant be changed after creation which means that a new object will created when there are changes

a = "hi there"
b = a
a << ", Bob"

puts a
puts b
