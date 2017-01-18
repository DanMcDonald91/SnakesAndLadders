require("minitest/autorun")
require("minitest/rg")

require_relative("../Player")
require_relative("../Dice")

class TestPlayer < Minitest::Test
  def setup
    @player1 = Player.new("Player1")
    @player2 = Player.new("Player2")
    @dice = Dice.new
  end

  def test_check_player_name
    assert_equal("Player1" , @player1.player_name)
    assert_equal("Player2" , @player2.player_name)
  end

  def test_player_can_move
    places_to_move = @dice.roll
    assert_equal(@player1.player_posistion + places_to_move, @player1.move(places_to_move))
    assert_equal(@player2.player_posistion + places_to_move, @player2.move(places_to_move))
  end

  def test_player_can_roll_dice
    10.times do 
    assert_equal(true, @dice.roll <= 6 && @dice.roll >= 1)
end


end
end
