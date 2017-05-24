class User

  def initialize(name)
    @name = name
    @position = 1
    @stepped_on_thing = false
  end

  def step_on(state)
    @stepped_on_thing = state
  end

  def get_stepped_on
    return @stepped_on_thing
    
  end

  def position
    return @position
  end

  def move(number)
    @position += number
  end

  def get_name
    return @name
  end

  def roll_die
    roll = rand(1..6)
    puts "#{@name} rolled #{roll}!"
    move(roll)
  end





end

