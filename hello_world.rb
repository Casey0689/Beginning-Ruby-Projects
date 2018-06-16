
seconds_per_minute = 60
minutes_per_hour = 60
hours_per_day = 24
days_per_year = 365

puts "There are: " + minutes_per_hour.to_s + " minutes in an hour"
puts "Seconds per year is: " + (seconds_per_minute * minutes_per_hour * hours_per_day * days_per_year).to_s
puts "Hello Casey"

puts "There are: #{seconds_per_minute} seconds per minute."
puts "Casey"

puts "The answer is: " + (5 % 2).to_s
puts "The answer is: #{5 % 2}"

puts 2 + 3 * 4 / 8      #Precenence

puts "*" * 60
puts "*" + "*" +"*"
puts 3 * "a".to_i


#   Getting user input
print "Please enter your age"
age = gets.chomp.to_i
puts "You said your age was: '#{age}'"

print age * days_per_year
