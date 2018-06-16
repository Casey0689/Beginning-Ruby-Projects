states =
    ["Alabama",
    "Alaska",
    "Arizona",
    "Arkansas",
    "California",
    "Colorado",
    "Connecticut",
    "Delaware",
    "Florida",
    "Georgia",
    "Hawaii",
    "Idaho",
    "Illinois",
    "Indiana",
    "Iowa",
    "Kansas",
    "Kentucky",
    "Louisiana",
    "Maine",
    "Maryland",
    "Massachusetts",
    "Michigan",
    "Minnesota",
    "Mississippi",
    "Missouri",
    "Montana",
    "Nebraska",
    "Nevada",
    "New Hampshire",
    "New Jersey",
    "New Mexico",
    "New York",
    "North Carolina",
    "North Dakota",
    "Ohio",
    "Oklahoma",
    "Oregon",
    "Pennsylvania",
    "Rhode Island",
    "South Carolina",
    "South Dakota",
    "Tennessee",
    "Texas",
    "Utah",
    "Vermont",
    "Virginia",
    "Washington",
    "West Virginia",
    "Wisconsin",
    "Wyoming"]

#puts states

#state = 0
#while state < states.length
#  puts states[state]
#  state += 1
#end

#states.each do |state|
#  if state[0] == "A"
#    puts state
#  end
#end

longest = states[0].length
longest_name = states[0]
states.each do | state |
  if state.length >= longest
    longest = state.length
    longest_name = state
  end
end
puts longest
puts longest_name

shortest = states[0].length
shortest_name = states[0]
states.each do |state|
  if state.length < shortest
    shortest = state.length
    shortest_name = state
  end
end
puts shortest
puts shortest_name
