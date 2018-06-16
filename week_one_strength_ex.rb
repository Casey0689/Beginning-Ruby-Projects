
seconds_per_minute = 60
minutes_per_hour = 60
hours_per_day = 24
days_per_year = 365
years_per_decade = 10

puts "There are " + (minutes_per_hour * hours_per_day * days_per_year).to_s + " minutes in a year"
puts "There are " + (minutes_per_hour * hours_per_day * days_per_year * years_per_decade).to_s + " minutes in a decade"
puts "My age in seconds: " + ((seconds_per_minute * minutes_per_hour * hours_per_day * days_per_year) * 27).to_s
puts "Authors age in seconds is: " + ((seconds_per_minute * minutes_per_hour * hours_per_day * days_per_year) * 37).to_s + ", Equaling: 37 years old"