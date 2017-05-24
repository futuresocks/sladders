

class Game_logic

  def initialize(players)
    @players = players
    @game = true
    @snakes = [15, 23, 35, 43, 55, 63, 75, 83, 99]
    @ladders = [8, 24, 36, 42, 54, 66, 78, 82]
  end

  def check_snake(player)
    for snake in @snakes
      if player.position() == snake
        player.step_on(true)
        player.move(-10)
        puts "#{player.get_name} just fucked up; stood on a snake and moved back to square #{player.position}"
        return
      end
    end
  end

  def check_ladder(player)
    for ladder in @ladders
      if player.position() == ladder
        player.step_on(true)
        player.move(10)
        puts "#{player.get_name} just crushed it and climbed up a ladder! To square #{player.position} with you, #{player.get_name}, you absolute ledge!"
        return
      end
    end
  end

    # for snake in @snakes
    #   if player.position == snake
    #     player.position -= rand(5..15)
    #     puts "OH NO! #{player} stood on a snake! #{player} has moved back to #{player.position}"
    #     return
    #   end
    # end
    # puts "#{player.get_name} is on square #{player.position}! Whoa!"



  def gameplay
    while @game == true
      for player in @players
        player.step_on(false)
        player.roll_die
        if player.position >= 100
          puts "#{player.get_name} wins!"
          @game = false
          return
        end
        check_snake(player)
        check_ladder(player)
        if player.get_stepped_on == false
          puts "#{player.get_name} is now on square #{player.position}! Whoa!"
        end
      end
    end
  end

end

