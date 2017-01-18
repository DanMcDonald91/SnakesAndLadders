require("minitest/autorun")
require("minitest/rg")

require_relative("../Player")
require_relative("../Board")
require_relative("../Dice")
require_relative("../Game")


class TestGame < Minitest::Test
  
  def setup

    array_of_players = [@player1 = Player.new("Player1") ,
    @player2 = Player.new("Player2")]
    @game = Game.new(array_of_players)
    
  end

  def test_player_to_move
    assert_equal("Player2" , @game.player_to_move)
end

end
