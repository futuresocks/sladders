require_relative 'user'
require_relative 'game_logic'

def setup
  @user1 = User.new("Colin")
  @user2 = User.new("L'il Stewie")
  @user3 = User.new("Big Chris")
  @user4 = User.new("Jia")
  @game = Game_logic.new([@user1, @user2, @user3, @user4])
end

setup

@game.welcome

puts "ARE YOU READY? (Y/N)"
answer = gets.chomp
if answer == "Y"
  @game.gameplay
else puts "Fine then."
end
