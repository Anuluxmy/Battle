require 'Game'
describe Game do

  it "gets the player from player class" do
    player_1 = Player.new("Anu")
    player_2 = Player.new("Taz")
    game = Game.new(player_1,player_2)

    expect(game.player_1.name).to eq("Anu")
    end


  describe '#hitpoints' do
    it ' reduces the player points' do
      player_1 = Player.new("Anu")
      player_2 = Player.new("Taz")
      game = Game.new(player_1,player_2)
      game.attack(player_1)
      expect { game.attack(player_1) }.to change { game.player_1.hitpoint }.by(-10)
    end
  end


end
