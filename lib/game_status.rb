# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]]
  
  
def won?(board)
  winner = nil
  WIN_COMBINATIONS.each do |combo|
    if combo.all? {|idx| board[idx] == "X"}
      winner = combo
    elsif combo.all? {|idx| board[idx] == "O"}
      winner = combo
    else
      false
    end
  end
  if winner != nil
    winner
  else
    false
  end
end

def full?(board)
  board.all? {|token| token == "X" || token == "O"}
end

def draw?(board)
  if full?(board)
    if won?(board) == false
      true
    else 
      false
    end
  else
    false
  end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    then true
  else false
end
end

def winner(board)
  if !won?(board)
    return nil
  elsif WIN_COMBINATIONS.each do |combo|
    if combo.all? {|idx| board[idx] == "X"}
      return "X"
      elsif combo.all? {|idx| board[idx] == "O"}
      return "O"
    end
  end
  end
  winner
end

