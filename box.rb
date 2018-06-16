#   1   2     3      4      5
#   *   **    ***    ****   *****
#       **    * *    *  *   *   *
#             ***    *  *   *   *
#                    ****   *   *
#                           *****
#
#


print "Please enter size of box: "
size = gets.to_i

if size > 0
  puts "*" * size

  (size - 2).times do
    puts "*" + (" " * (size - 2)).to_s + "*"
  end
  if size != 1
    puts "*" * size
  end
end


