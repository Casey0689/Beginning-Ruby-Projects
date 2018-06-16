############################################################
#
#  Name:         Casey Johnson
#  Date:         1/16/2017
#  Assignment:   Triangles
#  Class:        CIS - 282
#  Description:  Make a triangle from user input
#
############################################################

print "Please enter size of triangle: "
size = gets.to_i
spaces = 0

if size > 0
  puts "*" * (size - size + 1)

  (size - 2).times do
    spaces += 1
    puts "*" + (" " * (spaces - 1)).to_s + "*"
  end
  if size != 1
    puts "*" * size
  end
end

#print "Please enter size of triangle: "
#size = gets.to_i

if size > 0
  row = 1
  while row <= size
    num = 1
    while num <= row
      print (num).to_s
      num += 1
    end
    puts
    row += 1
  end
end