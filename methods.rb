#a = ["This", "is", "a", "test"]
#a = %w(This is a test)
#puts a.inspect

#a = %w(1 2. 3 4 5.)
#puts a.inspect

def add(a, b)
  #puts a + b
  return a + b
end
def mult(a, b)
  return a * b
end
def subtract(a, b)
  return a - b
end
def divide(a, b)
  return a / b
end

print "Enter a number: "
puts add(1, gets.to_i)
puts
puts add(3, 5) + add(4, 1)
puts add("Hey Casey,", " I Cant ") + add("Do ", "That")
puts
puts mult(2, 3)
puts mult("Hello ", 3)
puts
puts subtract(3.1, 6)
puts divide(5, 4.2)


