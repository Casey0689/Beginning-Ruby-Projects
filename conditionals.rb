=begin

print "input: "
user_input = gets.chomp.downcase

puts user_input
if user_input.include? "s"
  puts user_input.gsub!(/s/, "th")
end

=end

# Conditionals

print "What color is the light?: "
light = gets.chomp
light.downcase!
if light == "red"   #Boolean
  puts "Stop!"
elsif light == "yellow"
  puts "Slow Down"
else
  puts "Go faster"
end

puts "Program continues"