

# Aufgabe 1 und 2 einfache Ausgabe
arr = [1,2,3,4,5,6,7,8,9,10]
arrOdd = []
arrEven = []
arr.each do |current_element|
  if (current_element > 5)
  print("#{current_element}" + " ")
  else
    print("Nope #{current_element}\n")
    end
end


#One line version
arr.each { |current_element| puts current_element if current_element > 5}

arr.each { |current_element| puts current_element if current_element % 2 != 0}

arr.each do |iterator|
  if iterator %2 != 0
      arrOdd << iterator
  else
    arrEven << iterator
  end
end
print ("#{arrOdd} ")
print ("#{arrEven} ")


newArray = arr.select { |numbers| numbers % 2 != 0}
print("#{newArray} ")

arr.push(11)
puts("#{arr}")

arr.delete_at(10)
arr.push(3)
arr.push(3)
puts("#{arr}")
arr.uniq
puts("#{arr.uniq}") # uniq = gibt alle elemente des arrays zurück ohne array zu ändern
arr.uniq!
puts("#{arr}") # ändert das array sodass nur einzigartige elemente vorhanden sind

#Hashes in Ruby bestehen aus einem key value pair

#Beispiel Hash
hash_test_implicit = {"Tim" => 1, "Lucie" => 2}
puts hash_test_implicit["Lucie"]
hash_test_alternate_syntax = {Tim: 1, Lucie: 2}
puts hash_test_alternate_syntax[:Lucie]

#Weiteres Beispiel:
hash1 = {:name => 'Tim'}      #Alte Version
hash2 = {name: 'bob'}           #Neue Version

#Handling with hashes
#
h = {a:1, b:2, c:3, d:4}
puts "Ausgabe Hash: #{h}"
h[:e] = 5
puts "Ausgabe :b #{h}"

puts "\nBevor delete:\n"
h.each { |k, v| puts "K: #{k} V: #{v}"}
puts "\nNach delete:\n"

h.delete_if { |k, v| v < 3.5}
h.each { |k, v| puts "K: #{k} V: #{v}"}

#hash values as arrays
example_array = {name: ['Tim', 'Lucie', 'Kathi']}
#array of hashes
example_arr = [{name: 'Tim'}, {name: 'Lucie'}, {name: 'Kathi'}]

puts "Hash values as arrays: #{example_array}"
puts "array of hashes: #{example_arr}"