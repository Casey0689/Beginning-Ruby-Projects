############################################################
#
#  Name:         Casey Johnson
#  Date:         2/20/2017
#  Assignment:   Hash Assignment
#  Class:        CIS - 282
#  Description:  Create a hash to store a list of products and prices
#
############################################################

products_hash = { }
products_file = File.open("products.txt", 'r+')

while !products_file.eof?
  products = products_file.gets.chomp
  split_products = products.split(",")
  products_hash[split_products[0].to_i] = [split_products[1], split_products[2].to_f]
end

menu = [
    "1. View All Products",
    "2. Add a New Product",
    "3. Delete Product",
    "4. Update a Product",
    "5. View Highest Priced Product",
    "6. View Lowest Priced Product",
    "7. View Sum Cost of All Products",
    "8. Exit"
]
choice = " "
while choice != 8
  puts menu
  print "What would you like to do?: "
  choice = gets.to_i
  puts
  case choice
    when 1
      puts "Item".ljust(10) + "Description".center(10) + "Price".rjust(10)
      puts "----".ljust(10) + "-----------".center(10) + "-----".rjust(10)
      products_hash.each do | id, data |
        puts "#{id}".ljust(10) + "#{data[0]}".capitalize.center(10) + format( "%.2f", "#{data[1]}").rjust(11)
      end
      puts
    when 2
      new_num = rand(100..999)
      while products_hash.has_key?(new_num)
        new_num = rand(100..999)
      end
      print "What Product would you like to add?: "
      new_product = gets.chomp
      print " Enter a price value for the new item: "
      price = gets.to_f
      products_hash[new_num] = [new_product, price]
    when 3
      print "Enter an item number to delete: "
      deleted_item = gets.to_i
      if products_hash[deleted_item].nil?
        puts "Item No.#{deleted_item} doesn't exist"
      else
        products_hash.delete_if{|id, data| id == deleted_item}
      end
    when 4
      print "Enter a product number to update: "
      updated_item = gets.to_i
      if products_hash[updated_item].nil?
        puts "Item No.#{updated_item} doesn't exist"
      else
        print "Enter a new description: "
        updated_description = gets.chomp
        print "Enter a new price for item: "
        updated_price = gets.to_f
        products_hash[updated_item] = [updated_description, updated_price]
      end
    when 5
      highest_id = 0
      highest_item = " "
      highest = 0
      products_hash.each do |id, data|
        if data[1] > highest
          highest_id = id
          highest_item = data[0]
          highest = data[1]
        end
      end
      puts "Most expensive item is: " + "Item No. " + "#{highest_id}: " + "#{highest_item} ".capitalize + "for " + format("$%.2f","#{highest}")
      puts
    when 6
      lowest_id = 0
      lowest_item = " "
      lowest = 99999999999999.9
      products_hash.each do |id, data|
        if data[1] < lowest
          lowest_id = id
          lowest_item = data[0]
          lowest = data[1]
        end
      end
      puts "The cheapest item is: " + "item No. " + "#{lowest_id}: " + "#{lowest_item} ".capitalize + "for " + format("$%.2f", "#{lowest}")
      puts
    when 7
      sum = 0
      products_hash.each do |id, data|
        sum += data[1]
      end
      puts "Total sum of all items is: " + format("$%.2f", "#{sum}")
      puts
    when 8
      products_file.puts
      products_file.puts "products#{products_hash}"
    else
      puts 'Wrong Input, Enter Again!'
  end
end

products_file.close()