def menu(menu_items, prompt)
  menu_items.each_with_index do | item, item_number |
    puts "#{item_number + 1}. #{item}"
  end
  print prompt
  user_choice = gets.to_i
  return user_choice
end