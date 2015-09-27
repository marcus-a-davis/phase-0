# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)

=begin
    
  create an array with the letters of "bingo"

  call random letter from that array (and take its index)
  store a random number from 1 to 100 as a variable  
=end

# Check the called column for the number called.

=begin
Create a method to check the generated letter and number
Call the letter selected
check the column of the appropriate letter for the number

  
=end

# If the number is in the column, replace with an 'x'

=begin
  if not, return the board

  
=end


# Display the board to the console (prettily)

=begin
  
call inspect on the array of arrays
  
=end

# Initial Solution

# class BingoBoard

#   attr_reader :number
#   attr_reader :letter_select

#   def initialize(board)
#     @bingo_board = board
    
#   end

#   def create_call
#     letters = ["B", "I", "N", "G", "O"]
#     @letter_rand = rand(0..4)
#     store_me = @letter_rand
#     @letter_select = letters[store_me]
    


#     @number = rand(1..100)
#     p "#{@letter_select}#{@number} is called."
#   end

#   def check_column
#     @column_to_check = @letter_rand
#     # p @bingo_board
#     @counter = 0
#     @bingo_board.each do |array|
      
#       if array[@column_to_check] == @number
#         # p "This is working"
#         @num_to_mark = array[@column_to_check][@number]
        
#         @array_to_call = @counter
        
#         p @bingo_board[@array_to_call].index(@num_to_mark)
#         mark_board
#         print_board
#         break
#       else
#         p @counter
#         @counter += 1
#         next
#       end
#     end

#   end

#   def mark_board
#     p @bingo_board
#     @bingo_board[@array_to_call].insert(@num_to_mark, "X")
#     p @bingo_board
#     @bingo_board[@array_to_call].delete(@number)
#   end

#   def print_board
#     @bingo_board.each do |row|
#       p row
#     end
#   end
# 
# end

# Refactored Solution

class BingoBoard

  attr_reader :number
  attr_reader :letter_select

  def initialize(board)
    @bingo_board = board
    @letter_rand = rand(5)
    @number = rand(1..100)
  end

  def create_call
    letters = ["B", "I", "N", "G", "O"]

    @letter_select = letters[@letter_rand]
    
    @row_0 = @bingo_board[0]
    @row_1 = @bingo_board[1]
    @row_2 = @bingo_board[2]
    @row_3 = @bingo_board[3]
    @row_4 = @bingo_board[4]


    #p "#{@letter_select}#{@number} is called."
  end

  def check_column

    if @row_0[@letter_rand] == @number
      @row_0[@letter_rand] = "X"
      print_board
    elsif @row_1[@letter_rand] == @number
      @row_1[@letter_rand] = "X"
      print_board
    elsif @row_2[@letter_rand] == @number
      @row_2[@letter_rand] = "X"
      print_board
    elsif @row_3[@letter_rand] == @number
      @row_3[@letter_rand] = "X"
      print_board
    elsif @row_4[@letter_rand] == @number
      @row_4[@letter_rand] = "X"
      print_board
    else
      p "Not a match"
    end 
  end

  def print_board
    @bingo_board.each do |row|
      p row
    end
  end
end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.create_call
new_game.check_column


#Reflection

=begin
  
How difficult was pseudocoding this challenge? What do you think of
your pseudocoding style?
Writing the pseudocode was simple, actually implementing those
seemingly simple steps was much harder

What are the benefits of using a class for this challenge?
This would be extremely cumbersome to write as a single method.
Using a class, by contrast, enables you to pass data back
and forth easily while keeping track of what each method does.


How can you access coordinates in a nested array?
You can access coordinates in a nested array by chaining index calls.
For example, if you wanted to call the second element in the third
array of a nested hash you would use this syntax: array[2][1].

What methods did you use to access and modify the array?
I initially used insert and delete to change the elements to an
"X". However, after refactoring I used a simple if/else conditional
and direct equal assignment to alter the array.

How did you determine what should be an instance variable versus a
local variable?
I asked whether I would need the varible outside of the particular
local context in which it was created. If so, then I made the variable
an instance variable.

What do you feel is most improved in your refactored solution?
Readability. My first solution was rather hackish in and convuluted.
I think anyone could look at my refactored code and tell pretty
immediately what it does.
  
=end