require("minitest/autorun")
require("minitest/rg")

require_relative("../Player")


class TestPlayer < Minitest::Test
  def setup
    @player1 = Player.new("Player1")
    @player2 = Player.new("Player2")

  end

def test_check_player_name
  assert_equal("Player1" , @player1.player_name)
 assert_equal("Player2" , @player2.player_name)
 end
end


