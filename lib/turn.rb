def turn(board)
  puts "Please enter 1-9:"
  user_input = gets
  index = input_to_index(user_input)

  is_valid = valid_move?(board,index)
  if (is_valid)
    board = move(board,index,"X")
  else
    turn(board)
  end
display_board(board)
end

# Define a method display_board that prints a 3x3 Tic Tac Toe Board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------\n"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------\n"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#convert user input into an index
def input_to_index(user_input)
  index = user_input.to_i - 1
end

#check if a move is valid
def valid_move?(board,user_input)
  taken = position_taken?(board,user_input)
  valid_input = user_input.between?(0,8)
  valid_move = nil
  if(taken)
    valid_move = false
  else
    valid_move = true
  end
  if(valid_move && valid_input)
    true
  else
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,user_input)
  if (board[user_input] == " " || board[user_input] == "" || board[user_input] == nil)
 false
  else
 true
  end
end

#execute the users moves
def move(board,index,avatar)
  board[index] = avatar
  board
end
