############################################################
#
#  Name:         Casey Johnson
#  Date:         1/13/2017
#  Assignment:   Week 2 Strength Exercise
#  Class:        CIS - 282
#  Description:  Make a full name greating
#
############################################################

print "Hello human, what\'s your first name?: "
first_name = gets.chomp

print "What\'s your middle name?: "
middle_name = gets.chomp

print "Now, what is your last name?: "
last_name = gets.chomp

puts ""
puts "Its so nice to meet you " + first_name + " " + middle_name + " " + last_name + ". I'll just call you " + first_name + ". :)"

############################################################
#
#  Name:         Casey Johnson
#  Date:         1/13/2017
#  Assignment:   Week 2 Strength Exercise
#  Class:        CIS - 282
#  Description:  Bigger better favorite number
#
############################################################

puts""
print first_name + ", What is your favorite number?: "
fav_num = gets.to_i

puts ""
puts "Might i suggest " + (fav_num + 1).to_s + " as a bigger, better favorite number?"
