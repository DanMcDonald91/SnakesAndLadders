require("minitest/autorun")
require("minitest/rg")

require_relative("../Player")


class TestBear < Minitest::Test
  def setup
    @bear = Bear.new("Big Tam")
    @stomach = Array.new
  end