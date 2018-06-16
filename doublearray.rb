cells = [
    [ "a", "b", "c", "d", "e"],
    [ "f", "g", "h", "i", "j"],
    [ "k", "l", "m", "n", "o"],
    [ "p", "q", "r", "s", "t"],
    [ "u", "v", "w", "x", "y"],
]

puts cells[0][0]
puts cells[2][2]
puts cells[4][3]

cells.each do | row |
  row.each do |cell|
    print cell
  end
  puts
end