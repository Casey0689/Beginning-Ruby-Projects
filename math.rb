=begin

percent = 20.643557.to_i
dollars = 100.to_f
third = 1.0/3.0

puts percent
puts dollars
puts third
puts percent * dollars

total = 101.3333333

puts format("$%.2f", total)
puts "$" + format("%.2f", total)

=end

print "Enter withholding rate: "
rate = gets.to_f
if rate > 1
  rate = rate / 100
end

puts rate