people_hash = { }      #{id => [first,last,age]}


people_file = File.open("people.txt")

person = people_file.gets.chomp
puts person
pieces = person.split(",")
puts pieces
people_hash[ pieces[0].to_i ] = [ pieces[1], pieces[2], pieces[3].to_i]

puts people_hash.inspect

people_file.close

# Main program
# Draw menu, ask for input, manipulate the hash

# Select Quit
# Write oue hash to the file


# Open File
# Write Data

                    #Key, #Value
people_hash.each do | id, data|
  puts "#{id},#{data[0]},#{data[1]},#{data[2]}"
end

# Close File
# Quit