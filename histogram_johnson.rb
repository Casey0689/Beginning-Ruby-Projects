############################################################
#
#  Name:         Casey Johnson
#  Date:         1/16/2017
#  Assignment:   Histogram
#  Class:        CIS - 282
#  Description:  Make a histogram with an array of random numbers
#
############################################################
numbers = Array.new
200.times do
  numbers << (rand(1..100))
end
num1_10 = 0
num11_20 = 0
num21_30 = 0
num31_40 = 0
num41_50 = 0
num51_60 = 0
num61_70 = 0
num71_80 = 0
num81_90 = 0
num91_100 = 0
range = "Range"
num_found = "#Found"
chart = "Chart"
dash = "-"

numbers.each do |number|
  if numbers[number] > 0 && numbers[number] < 11
    num1_10 += 1
  elsif numbers[number] >= 11 && numbers[number] <= 20
    num11_20 += 1
  elsif numbers[number] >= 21 && numbers[number] <= 30
    num21_30 += 1
  elsif numbers[number] >= 31 && numbers[number] <= 40
    num31_40 += 1
  elsif numbers[number] >= 41 && numbers[number] <= 50
    num41_50 += 1
  elsif numbers[number] >= 51 && numbers[number] <= 60
    num51_60 += 1
  elsif numbers[number] >= 61 && numbers[number] <= 70
    num61_70 += 1
  elsif numbers[number] >= 71 && numbers[number] <= 80
    num71_80 += 1
  elsif numbers[number] >= 81 && numbers[number] <= 90
    num81_90 += 1
  elsif numbers[number] >= 91 && numbers[number] <= 100
    num91_100 += 1
  end
end

=begin
puts "1-10 gets: #{num1_10}"
puts "11-20 gets: #{num11_20}"
puts "21-30 gets: #{num21_30}"
puts "31-40 gets: #{num31_40}"
puts "41-50 gets: #{num41_50}"
puts "51-60 gets: #{num51_60}"
puts "61-70 gets: #{num61_70}"
puts "71-80 gets: #{num71_80}"
puts "81-90 gets: #{num81_90}"
puts "91-100 gets: #{num91_100}"
=end

puts
line_width = 20
puts range.rjust(line_width) + num_found.center(line_width) + chart.ljust(line_width)
puts ("-" * range.length).rjust(line_width) + ("-" * num_found.length).center(line_width) + ("-" * 40).ljust(line_width)
puts
puts "1-10".rjust(line_width) + "| #{num1_10.to_s.center(4)} |".center(line_width) + ("*" * num1_10).ljust(line_width)
puts "11-20".rjust(line_width) + "| #{num11_20.to_s.center(4)} |".center(line_width) + ("*" * num11_20).ljust(line_width)
puts "21-30".rjust(line_width) + "| #{num21_30.to_s.center(4)} |".center(line_width) + ("*" * num21_30).ljust(line_width)
puts "31-40".rjust(line_width) + "| #{num31_40.to_s.center(4)} |".center(line_width) + ("*" * num31_40).ljust(line_width)
puts "41-50".rjust(line_width) + "| #{num41_50.to_s.center(4)} |".center(line_width) + ("*" * num41_50).ljust(line_width)
puts "51-60".rjust(line_width) + "| #{num51_60.to_s.center(4)} |".center(line_width) + ("*" * num51_60).ljust(line_width)
puts "61-70".rjust(line_width) + "| #{num61_70.to_s.center(4)} |".center(line_width) + ("*" * num61_70).ljust(line_width)
puts "71-80".rjust(line_width) + "| #{num71_80.to_s.center(4)} |".center(line_width) + ("*" * num71_80).ljust(line_width)
puts "81-90".rjust(line_width) + "| #{num81_90.to_s.center(4)} |".center(line_width) + ("*" * num81_90).ljust(line_width)
puts "91-100".rjust(line_width) + "| #{num91_100.to_s.center(4)} |".center(line_width) + ("*" * num91_100).ljust(line_width)