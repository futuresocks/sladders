require 'minitest/autorun'
require 'minitest/rg'
require_relative '../user'
require_relative '../game_logic'

class TestGame_logic < MiniTest::Test

  def setup
    @user1 = User.new("Colin")
    @user2 = User.new("L'il Stewie")
    @user3 = User.new("Big Chris")
    @user4 = User.new("Micky")
    @game = Game_logic.new([@user1, @user2, @user3, @user4])
  end

  def test_check_snake()
    @user3.move(16)
    @game.check_snake(@user3)
    assert_equal(7, @user3.position)
  end

  def test_check_ladder()
    @user3.move(20)
    @game.check_ladder(@user3)
    assert_equal(31, @user3.position)
  end

end
