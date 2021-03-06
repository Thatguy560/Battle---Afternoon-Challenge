require 'player.rb'
describe Player do
  subject(:dave) { Player.new('Dave') } # described_class.new
  subject(:mittens) { Player.new('Mittens') } # described_class.new

  describe '#name' do
    it 'returns the name' do
      expect(dave.name).to eq 'Dave'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(dave.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  # describe '#attack' do
  #   it 'damages the player' do
  #     expect(mittens).to receive(:receive_damage)
  #     dave.attack(mittens)
  #   end
  # end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { dave.receive_damage }.to change { dave.hit_points }.by(-10)
    end
  end
 end
 
# Setting that new instance of class equal to name?
# Creates a new instance of Player class each time passing in 
# a given name as an argument.

# Expect class name.@name (instance variable) to equal
# the input we've passed in
