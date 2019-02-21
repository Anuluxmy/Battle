require_relative 'player.rb'
class Game

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def attack(player)
    player.hitpoint -= 10
  end

  # def hitpoints
  #   @hitpoint -= 10
  # end
end
