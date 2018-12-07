contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
                ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contactDataTwo = ["joe@email.com", "123 Main st.", "555-123-4567"]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
contactsTwo = {"Joe Smith" => {}, "Sally Johnson" => {}}



contactsTwo["Joe Smith"][:email] = contact_data[0][0]
contactsTwo["Joe Smith"][:address] = contact_data[0][1]
contactsTwo["Joe Smith"][:phone] = contact_data[0][2]
contactsTwo["Sally Johnson"][:email] = contact_data[1][0]
contactsTwo["Sally Johnson"][:address] = contact_data[1][1]
contactsTwo["Sally Johnson"][:phone] = contact_data[1][2]

puts "Contacts: #{contactsTwo}"

puts "\nAufgabe2:\n"
puts "Joes Email is #{contactsTwo["Joe Smith"][:email]}"
puts "Sally Jonsons Email is #{contactsTwo["Sally Johnson"][:email]}\n"


#Aufgabe 3: Über Hash iterieren & mit eingaben von Array auffüllen
#Über hashes wird folgenderweise iteriert: K0:V0, K0:V1, K0:V2, K1:V0, K1:V1, K1:V2

fields = [:email, :address, :phone]

contacts.each do |name, hash|
  fields.each do |field|
    puts "Name: #{name} Hash: #{hash}"

    hash[field] = contactDataTwo.shift
  end
end

puts "Ausgabe Hash: #{contacts}"

#Aufgabe 4: Über Hash iterieren & mit eingaben von Array mit mehreren Personen

fieldsTwo = [:email, :street, :phone]

conData = [["Email@Tim", "Straße Tim", "Tel Tim"],["Email@Lucie", "Straße Lucie", "Tel Lucie"],["Email@Kathi","Straße Kathi", "Tel Kathi"]]

contact = {"Tim" => {}, "Lucie" => {}, "Kathi" => {}}

contact.each_with_index do | (k, v), i |
  fieldsTwo.each do |field|
    v[field] = conData[i].shift
  end
end

contact.each do |contact|
  puts "Aktueller Kontakt: #{contact}\n\n"
end

