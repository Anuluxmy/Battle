require 'player'

describe Player do
  subject(:anu) { Player.new('Anu') }
  subject(:taz) { Player.new('Taz') }

   describe '#name' do
     it "returns its name" do
      expect(anu.name).to eq('Anu')
     end
   end

   describe '#attack' do
     it "return the hitpoints" do
       expect(anu.hitpoint).to eq described_class::DEFAULT_HITPOINT
     end
   end

   # describe '#attack' do
   #   it "damages the player" do
   #     expect(taz).to receive(:hitpoints)
   #     anu.attack(taz)
   #   end
   # end
   #
   # describe '#hitpoints' do
   #   it ' reduces the player points' do
   #     expect { anu.hitpoints }.to change { anu.hitpoint }.by(-10)
   #   end
   # end
end
