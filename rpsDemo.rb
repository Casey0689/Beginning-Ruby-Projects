require_relative("menu.rb")

rps_menu = ["rock", "paper", "scissors", "quit"]

user_choice = 0
while (user_choice = menu( rps_menu, "Choose your weapon: "))!= 4
  puts user_choice
end