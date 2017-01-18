require("minitest/autorun")
require("minitest/rg")

require_relative("../Board")


class TestBoard < Minitest::Test

  def setup
@board = Board.new()
  end

  def test_game_over
    assert_equal(true , @board.game_over(true))
    assert_equal(false , @board.game_over(false))
  end

  def test_bord_size
    assert_equal(25 , @board.game_board.size)
end

end
