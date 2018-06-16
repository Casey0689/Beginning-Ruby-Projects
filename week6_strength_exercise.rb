############################################################
#
#  Name:         Casey Johnson
#  Date:         1/16/2017
#  Assignment:   Week 6 Strength Exercise
#  Class:        CIS - 282
#  Description:  Building and Sorting an Array
#
############################################################

my_array = []
print "Please enter one word at a time for the array: "
input = " "
while input != ""
  input = gets.chomp
  if input != ""
    print "Next word: "
  end
  my_array << input
end

puts my_array.sort