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

  def test_player_can_move
    assert_equal(6, @player1.move(6))
    assert_equal(4, @player2.move(4))
  end
end


