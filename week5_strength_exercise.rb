############################################################
#
#  Name:         Casey Johnson
#  Date:         1/16/2017
#  Assignment:   Week 5 Strength Exercise
#  Class:        CIS - 282
#  Description:  Def Grandma Extended from Book, section 7.5
#
############################################################

print "HELLO SONNY, GRANNY'S MISSED YOU! HOW HAVE YOU BEEN?: "



input2 = " "
while input2 != "BYE"
  rand_year = (rand(1930..1950))
  input2 = gets.chomp
  if input2 != input2.upcase
    puts "HUH?! SPEAK UP, SONNY!"
  elsif input2.upcase == "BYE"
    puts "OK DEARY GOODBYE, GRANNY LOVES YOU!"
  else
    puts "NO, NOT SINCE #{rand_year}!"
  end
  input1 = " "
  while input1 != "BYE"
    rand_year = (rand(1930..1950))
    input1 = gets.chomp
    if input1 != input1.upcase
      puts "HUH?! SPEAK UP, SONNY!"
    elsif input1.upcase == "BYE"
      puts "OF COURSE YOU CAN HAVE A COOKIE DEAR."
    else
      puts "NO, NOT SINCE #{rand_year}!"
    end
    user_input = " "
    while user_input != "BYE"
      rand_year = (rand(1930..1950))
      user_input = gets.chomp
      if user_input != user_input.upcase
        puts "HUH?! SPEAK UP, SONNY!"
      elsif user_input.upcase == "BYE"
        puts "OF COURSE YOU CAN HELP ME WITH THE HOUSE HUNNY."
      else
        puts "NO, NOT SINCE #{rand_year}!"
      end
    end
  end
end


