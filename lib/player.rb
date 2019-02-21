
class Player
  DEFAULT_HITPOINT = 60
  attr_reader :name, :hitpoint
  attr_accessor :hitpoint

  def initialize(name,hitpoint = DEFAULT_HITPOINT)
    @hitpoint = hitpoint
    @name = name
  end

  # def attack(player)
  #   player.hitpoints
  # end
  #
  # # def hitpoints
  # #   @hitpoint -= 10
  # # end

end
