def print_hash(dictionary)
  dictionary.each do |key, value|
    puts "#{key} is difined as #{value}"
  end
end

dictionary = {
    #Key    =>    Value
    "Apple" => "A fruit",
    "Bannana" => "A yellow fruit",
    "Grapes" => "A bunch of green fruit",
    1 => "Apple",
    [1, 2] => "One and two"
}

puts dictionary.count

print_hash(dictionary)

dictionary["Tomato"] = "A juicy vegitable"

puts dictionary.count

print_hash(dictionary)