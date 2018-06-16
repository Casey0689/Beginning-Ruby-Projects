=begin
def menu(menu_items, prompt)
  menu_items.each_with_index do | item, item_number |
    puts "#{item_number + 1}. #{item}"
  end
  print prompt
  user_choice = gets.to_i
  return user_choice
end
=end

require_relative("menu.rb")

shape_menu = [
    "Draw Bow",
    "Draw a circle",
    "Draw a daimond",
    "Draw star",
    "Quit"
]
colors = %w(red blue green yellow white purple)

user_choice = 0
while user_choice != 5

  user_choice = menu(colors, "Please select a color: ")

  if (user_choice) == 1
    puts "'Drawing a Box'"
  elsif (user_choice) == 2
    puts "'Drawing a Circle'"
  elsif (user_choice) == 3
    puts "'Drawing a Daimond'"
  elsif (user_choice) == 4
    puts "'Drawing a Star'"
  elsif (user_choice) == 5
    puts "'Quitting'"
  else
    puts "'Invalid Choice, Choose Again!'"
  end
end
