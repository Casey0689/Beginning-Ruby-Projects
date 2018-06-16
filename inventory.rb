products = {
    124=>["shoes",59.99],
    352=>["shirt",19.99],
    456=>["socks", 3.99]
}

puts products[124][0]
puts products[124][1]
puts "#{products[124][0]} #{products[124][1]}"

product_id = 789    #Boots 79.99
products[product_id] = ["boots", 79.99]
puts products.inspect

new_num = rand(100..999)
while products.has_key?(new_num)
  new_num = rand(100..999)
end
new_num     # New unique product id