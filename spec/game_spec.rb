require 'game.rb'
describe Game do
  # subject(:dave) { Player.new('Dave') }
  # subject(:mittens) { Player.new('Mittens') }
  let(:player_1) {double :player_1 }
  let(:player_2) {double :player_2 }
 # Using Mocking to create new instance of players which
 # we can allow to receieve damage.

  describe '#attack' do
    it 'damages the player' do
      allow(player_2).to receive(:receive_damage)
      subject.attack(player_2) # Expecting new instance of game
      # to attack player 2. 
    end
  end

end