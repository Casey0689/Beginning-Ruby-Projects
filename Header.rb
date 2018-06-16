############################################################
#
#  Name:         Casey Johnson
#  Date:         1/16/2017
#  Assignment:   Header
#  Class:        CIS - 282
#  Description:  Create a header for projects
#
############################################################

print "Please Enter Your First and Last Name: "
name = gets.chomp

print "Please Enter Todays date: "
date = gets.chomp

print "Please Enter Assignment: "
assignment = gets.chomp

print "Please Enter Class Number: "
class_num = gets.chomp

print "Please Enter Description: "
desc = gets.chomp

puts "#" * 60
puts "#"
puts "#  Name:         " + name
puts "#  Date:         " + date
puts "#  Assignment:   " + assignment
puts "#  Class:        " + class_num
puts "#  Description:  " + desc
puts "#"
puts "#" * 60