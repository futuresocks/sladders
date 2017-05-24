require 'minitest/autorun'
require 'minitest/rg'
require_relative '../user'

class TestUser < MiniTest::Test

  def setup
    @user1 = User.new("Colin")
    @user2 = User.new("L'il Stewie")
    @user3 = User.new("Big Chris")
    @user4 = User.new("Micky")
  end

 def test_get_name
  assert_equal("Colin", @user1.get_name)
end

  def test_roll_die
    assert_equal(1, @user1.roll_die)
  end

  def test_move_by_die
    @user1.roll_die()
    assert_equal(7, @user1.position)
  end

end