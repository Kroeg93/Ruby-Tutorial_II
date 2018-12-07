arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

puts "Komplettes Array: #{arr}"

arr.delete_if { |word| word.start_with?('s')}
puts "Verkleinertes Array: #{arr}"
arr.delete_if { |word| word.start_with?('s', 'w')}
puts "Verkleinertes Array: #{arr}"


a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']


newArray = []

a.each do |currentElement|
  currentElement.split.each do |currentSplitElement|
    newArray.push(currentSplitElement)
  end
end

puts "New Array: #{newArray}"


b = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

b = b.map { |pairs| pairs.split}
b.flatten!
puts "\nNeues Array II: #{b}"