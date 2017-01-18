class Game

  attr_reader :activeplayer, :game_over

  def initialize(players)

    @players = players
    @activeplayer = players[0]
    @game_dice = Dice.new
    @game_board = Board.new
    @game_over = false
    
  end

  def player_to_move
    #player 1 takes turn, so it's player 2 to move?
    activeplayer = @players[+1]
    return activeplayer.player_name
  end

  def play_game
    #puts "do you want to play?"
    roll = @dice.roll
    #puts "you rolled #{roll}"
    position = activeplayer.move(roll)
    #puts "you have moved to position"
    #updates who's turn it is
    player_to_move

    if position >= 100
      puts "Game has Ended"
    else
      play_game
    end
  end
end
