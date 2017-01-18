class Board
  attr_reader :game_board

 def initialize
  @game_board = Array.new(25) {|i| i = 0}
 end

 def game_over(game_over)
  return game_over
 end

 def player1_posistion(player_posistion)
  return player_posistion
end

def update_posistion(posistion)
  @game_board[posistion] = @game_board[posistion] + 1
  end




end
