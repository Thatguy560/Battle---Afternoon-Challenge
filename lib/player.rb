class Player
  DEFAULT_HIT_POINTS = 100
  attr_reader :name, :hit_points

  def initialize(name, hit_points = DEFAULT_HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  # def attack(player)
  #   player.receive_damage
  # end

  def receive_damage
    @hit_points -= 10
  end
end

# After initialize we pass in an argument into our parameter which can be whatever
# we want to type in and we're setting that equal to an instance variable we called @name
# which was can use whenever we want.