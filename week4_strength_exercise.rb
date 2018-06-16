############################################################
#
#  Name:         Casey Johnson
#  Date:         1/16/2017
#  Assignment:   Week 4 Strength Exercise
#  Class:        CIS - 282
#  Description:  Loop out the 99 bottles of beer song/ or words
#
############################################################

bottles = 99
while bottles > 0
  puts "#{bottles} of beer on the wall, #{bottles} of beer, take one down pass it around, " + (bottles - 1).to_s + " bottles of beer on the wall!"
  bottles -= 1
end