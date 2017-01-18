require("minitest/autorun")
require("minitest/rg")

require_relative("../Dice")


class TestDice < Minitest::Test
  def setup

    @dice = Dice.new
  end

def test_dice_can_roll
  10.times do 
  assert_equal(true, @dice.roll <= 6 && @dice.roll >= 1)
end
end
end
