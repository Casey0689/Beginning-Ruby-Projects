############################################################
#
#  Name:         Casey Johnson
#  Date:         1/16/2017
#  Assignment:   Rock, Paper, Scissors, Lizard, Spock
#  Class:        CIS - 282
#  Description:  Play rock paper scissors lizard spock
#
############################################################

choices = ["Rock", "Paper", "Scissors"]
menu = [
    "1. Rock",
    "2. Paper",
    "3. Scissors",
    "4. Quit"
]
wins = 0
losses = 0
ties = 0

print "Want to play rock paper scissors? Yes or No: "
play = gets.chomp

if play.downcase == "yes"
  user_choice = 0
  while user_choice != 4
    menu.each do | item |
      puts item
    end

    print "please enter a selection: "
    user_choice = gets.to_i
    computer_choice = rand(choices.length)

    if user_choice == 1 && computer_choice == 2
      puts "Rock Beats Scissors"
      puts "'You Win!'"
      wins += 1
    elsif user_choice == 1 && computer_choice == 1
      puts "Paper Covers Rock"
      puts "'You Lose!'"
      losses += 1
    elsif user_choice == 1 && computer_choice == 0
      puts "Rocks Collide"
      puts "'Its a Tie!'"
      ties += 1
    elsif user_choice == 2 && computer_choice == 2
      puts "Scissors Cuts Paper"
      puts "'You Lose!'"
      losses += 1
    elsif user_choice == 2 && computer_choice == 1
      puts "Paper Stack"
      puts "'Its a Tie!'"
      ties += 1
    elsif user_choice == 2 && computer_choice == 0
      puts "Paper Covers Rock"
      puts "'You Win!'"
      wins += 1
    elsif user_choice == 3 && computer_choice == 2
      puts "Scissors Clash"
      puts "'Its a Tie!'"
      ties += 1
    elsif user_choice == 3 && computer_choice == 1
      puts "Scissors cuts Paper"
      puts "'You Win!'"
      wins += 1
    elsif user_choice == 3 && computer_choice == 0
      puts "Rock crushes Scissors"
      puts "'You Lose!'"
      losses += 1
    elsif user_choice == 4
      puts "'Goodbye', Printing Score: "
      puts
      puts "Wins: #{wins}"
      puts "Losses: #{losses}"
      puts "Ties: #{ties}"
    else
      puts "'Invalid Choice, Choose Again!'"
    end
  end
end