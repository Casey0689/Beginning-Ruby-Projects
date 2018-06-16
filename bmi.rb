print "Enter weight in pounds: "
weight = gets.to_i

print "Enter height in inches: "
height = gets.to_i

bmi = (weight * 703) / (height ** 2)

puts "your bmi is: #{bmi}"

if bmi < 16
  puts "seriously underweight"
elsif bmi >= 16 && bmi <= 18
  puts "underweight"
elsif bmi >= 19 && bmi <= 24
  puts "normal weight"
elsif bmi >= 25 && bmi <= 34
  puts "overweight"
elsif bmi <= 35
  puts "seriously overweight"
else
  puts "gravly overweight"
end