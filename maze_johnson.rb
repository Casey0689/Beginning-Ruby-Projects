############################################################
#
#  Name:         Casey Johnson
#  Date:         3/17/2017
#  Assignment:   Ruby Final
#  Class:        CIS-282
#  Description:  Ruby Maze Final
#
############################################################

maze_menu = [
    "1. Maze01",
    "2. Maze02",
    "3. Maze03",
    "4. Maze04",
    "5. Maze05",
    "6. Maze06",
    "7. Maze07",
    "8. Maze08",
    "9. Maze09",
    "10. Maze10",
    "11. Quit"
]

def maze_file_open(filename)
  maze = []
  maze_file = File.open(filename)
  while ! maze_file.eof?
    row = maze_file.gets.chomp
    maze_array = row.split("")
    maze << maze_array
  end
  maze_file.close
  return maze
end

def print_maze(maze)
  maze.each do | row |
    puts row.join("")
  end
end

def find_f(maze)
  row = 0
  while row < maze.count
    col = 0
    while col < maze[row].count
      if maze[row][col] == 'F'
        row_f = row
        col_f = col
        #print "'F' row: #{row_f}\n'F' col: #{col_f}\n"
      end
      col += 1
    end
    row += 1
  end
  return row_f, col_f
end

def find_s(maze)
  row = 0
  while row < maze.count
    col = 0
    while col < maze[row].count
      if maze[row][col] == 'S'
        row_s = row
        col_s = col
        #print "'S' row: #{row_s}\n'S' col: #{col_s}\n"
      end
      col += 1
    end
    row += 1
  end
  return row_s, col_s
end

def maze_start(maze)
  row_f, col_f = find_f(maze)
  if maze[row_f][col_f] == 'F'
    if maze[row_f - 1][col_f] == ' '
      maze[row_f - 1][col_f] = 0
    end
    if maze[row_f + 1][col_f] == ' '
      maze[row_f + 1][col_f] = 0
    end
    if maze[row_f][col_f - 1] == ' '
      maze[row_f][col_f - 1] = 0
    end
    if maze[row_f][col_f + 1] == ' '
      maze[row_f][col_f + 1] = 0
    end
  end
end

def maze_path_to_s(maze)
  found_s = false
  maze_num = 0
  while found_s == false
    row = 0
    while row < maze.count
      col = 0
      while col < maze[row].count
        if maze[row][col] == maze_num
          if (row - 1) >= 0 && (row + 1) <= maze.count && (col - 1) >= 0 && (col + 1) <= maze[row].count
            if maze[row - 1][col] == ' '
              maze[row - 1][col] = maze_num + 1
            end
            if maze[row + 1][col] == ' '
              maze[row + 1][col] = maze_num + 1
            end
            if maze[row][col - 1] == ' '
              maze[row][col - 1] = maze_num + 1
            end
            if maze[row][col + 1] == ' '
              maze[row][col + 1] = maze_num + 1
            end
            if maze[row - 1][col] == 'S'
              found_s = true
            end
            if maze[row + 1][col] == 'S'
              found_s = true
            end
            if maze[row][col - 1] == 'S'
              found_s = true
            end
            if maze[row][col + 1] == 'S'
              found_s = true
            end
          end
        end
        col += 1
      end
      row += 1
    end
    maze_num += 1
    if maze_num > (maze.count * maze[0].count)
        found_s = true
    end
  end
  return maze_num
end

def path_back(maze)
  row_s, col_s = find_s( maze )
  steps = 0
  maze_num = maze_path_to_s(maze)
  while maze_num >= 0
    if maze[row_s - 1][col_s] == maze_num - 1
      maze[row_s - 1][col_s] = '*'
      row_s -= 1
      steps += 1
    end
    if maze[row_s + 1][col_s] == maze_num - 1
      maze[row_s + 1][col_s] = '*'
      row_s += 1
      steps += 1
    end
    if maze[row_s][col_s - 1] == maze_num - 1
      maze[row_s][col_s - 1] = '*'
      col_s -= 1
      steps += 1
    end
    if maze[row_s][col_s + 1] == maze_num - 1
      maze[row_s][col_s + 1] = '*'
      col_s += 1
      steps += 1
    end
    maze_num -= 1
  end
  return steps
end

def clear_maze_nums(maze)
  row = 0
  while row < maze.count
    col = 0
    while col < maze[row].count
      if maze[row][col].is_a?(Fixnum)
        maze[row][col] = " "
      end
      col += 1
    end
    row += 1
  end
end

user_input = " "
while user_input != 11
  puts maze_menu
  print "Select a maze to solve: "
  user_input = gets.to_i
  case user_input
    when 1
      maze = maze_file_open("maze1.mz")
      find_f(maze)
      find_s(maze)
      maze_start(maze)
      maze_path_to_s(maze)
      steps = path_back(maze)
      clear_maze_nums(maze)
      print_maze(maze)
      if steps == 0
        puts "Cannot Solve Maze."
      else
        puts "It took #{steps} steps to find the finish!"
        puts "Press Enter to continue"
      end
      pause = gets
    when 2
      maze = maze_file_open("maze2.mz")
      find_f(maze)
      find_s(maze)
      maze_start(maze)
      maze_path_to_s(maze)
      steps = path_back(maze)
      clear_maze_nums(maze)
      print_maze(maze)
      if steps == 0
        puts "Cannot Solve Maze."
      else
        puts "It took #{steps} steps to find the finish!"
        puts "Press Enter to continue"
      end
      pause = gets
    when 3
      maze = maze_file_open("maze3.mz")
      find_f(maze)
      find_s(maze)
      maze_start(maze)
      maze_path_to_s(maze)
      steps = path_back(maze)
      clear_maze_nums(maze)
      print_maze(maze)
      if steps == 0
        puts "Cannot Solve Maze."
      else
        puts "It took #{steps} steps to find the finish!"
        puts "Press Enter to continue"
      end
      pause = gets
    when 4
      maze = maze_file_open("maze4.mz")
      find_f(maze)
      find_s(maze)
      maze_start(maze)
      maze_path_to_s(maze)
      steps = path_back(maze)
      clear_maze_nums(maze)
      print_maze(maze)
      if steps == 0
        puts "Cannot Solve Maze."
        puts "Press Enter to continue"
      else
        puts "It took #{steps} steps to find the finish!"
        puts "Press Enter to continue"
      end
      pause = gets
    when 5
      maze = maze_file_open("maze5.mz")
      find_f(maze)
      find_s(maze)
      maze_start(maze)
      maze_path_to_s(maze)
      steps = path_back(maze)
      clear_maze_nums(maze)
      print_maze(maze)
      if steps == 0
        puts "Cannot Solve Maze."
      else
        puts "It took #{steps} steps to find the finish!"
        puts "Press Enter to continue"
      end
      pause = gets
    when 6
      maze = maze_file_open("maze6.mz")
      find_f(maze)
      find_s(maze)
      maze_start(maze)
      maze_path_to_s(maze)
      steps = path_back(maze)
      clear_maze_nums(maze)
      print_maze(maze)
      if steps == 0
        puts "Cannot Solve Maze."
      else
        puts "It took #{steps} steps to find the finish!"
        puts "Press Enter to continue"
      end
      pause = gets
    when 7
      maze = maze_file_open("maze7.mz")
      find_f(maze)
      find_s(maze)
      maze_start(maze)
      maze_path_to_s(maze)
      steps = path_back(maze)
      clear_maze_nums(maze)
      print_maze(maze)
      if steps == 0
        puts "Cannot Solve Maze."
      else
        puts "It took #{steps} steps to find the finish!"
        puts "Press Enter to continue"
      end
      pause = gets
    when 8
      maze = maze_file_open("maze8.mz")
      find_f(maze)
      find_s(maze)
      maze_start(maze)
      maze_path_to_s(maze)
      steps = path_back(maze)
      clear_maze_nums(maze)
      print_maze(maze)
      if steps == 0
        puts "Cannot Solve Maze."
      else
        puts "It took #{steps} steps to find the finish!"
        puts "Press Enter to continue"
      end
      pause = gets
    when 9
      maze = maze_file_open("maze9.mz")
      find_f(maze)
      find_s(maze)
      maze_start(maze)
      maze_path_to_s(maze)
      steps = path_back(maze)
      clear_maze_nums(maze)
      print_maze(maze)
      if steps == 0
        puts "Cannot Solve Maze."
      else
        puts "It took #{steps} steps to find the finish!"
        puts "Press Enter to continue"
      end
      pause = gets
    when 10
      maze = maze_file_open("maze10.mz")
      find_f(maze)
      find_s(maze)
      maze_start(maze)
      maze_path_to_s(maze)
      steps = path_back(maze)
      clear_maze_nums(maze)
      print_maze(maze)
      if steps == 0
        puts "Cannot Solve Maze."
      else
        puts "It took #{steps} steps to find the finish!"
        puts "Press Enter to continue"
      end
      pause = gets
    when 11
      puts "Goodbye"
    else
      puts "Invalid Entry"
  end
end