############################################################
#
#  Name:         Casey Johnson
#  Date:         1/17/2017
#  Assignment:   Angry Boss
#  Class:        CIS - 282
#  Description:  Angry Boss fires you for asking a question
#
############################################################

print "What slave!, what do you want!?: "
answer = gets.chomp.upcase

puts "WHADDAYA MEAN, #{answer}!?! YOUR FIRED!!"

############################################################
#
#  Name:         Casey Johnson
#  Date:         1/17/2017
#  Assignment:   Table of contents
#  Class:        CIS - 282
#  Description:  Make a table of contents using line-width and .center
#
############################################################
puts ""
puts ""

line_width = 30
str_contents = "Table of Contents"
str1 = "Chapter 1:"
str2 = "Chapter 2:"
str3 = "Chapter 3:"
str4 = "Getting Started"
str5 = "Numbers"
str6 = "Letters"
str7 = "Page 1"
str8 = "Page 9"
str9 = "Page 13"
puts (str_contents.center(line_width * 2))
puts (str1.ljust(line_width - 15) + str4.ljust(line_width) + str7.ljust(line_width))
puts (str2.ljust(line_width - 15) + str5.ljust(line_width) + str8.ljust(line_width))
puts (str3.ljust(line_width - 15) + str6.ljust(line_width) + str9.ljust(line_width))
