# times do loop
=begin

10.times do
  puts "Hello"
end

=end

# WHILE loop
# 3 conditions
# Starting condition   - loop counter
# Boolean expression
# Some expression that modifies the boolean expression


counter = 0
while counter <= 10
  puts counter
  counter += 2
end
puts "Finished"


# FOR "in" loop

start = -5
ending = 10
for i in start..ending      # 2 dots are inclusive
  puts i                    # 3 dots exclusive on the right value
end
