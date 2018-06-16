
states_file = File.open('states.txt')
all_states = []


while !states_file.eof?
  all_states << states_file.gets.chomp
end

states_file.close

puts all_states.inspect
puts all_states[0]