require 'game'

describe Game do

  let(:player_1)    { double :player_1 }
  let(:player_2)     { double :player_2 }
  #let(:current_turn) { double :current_turn }
  subject(:game) { described_class.new(player_1, player_2) }

  describe '#player_1' do
    it 'retrieves player one' do
      expect(game.player_1).to eq(player_1)
    end
  end

  describe '#player_2' do
    it 'player two' do
      expect(game.player_2).to eq(player_2)
    end
  end

  describe '#current_turn' do
    it 'returns current turn player' do
      expect(game.current_turn).to eq(player_1)
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end



end
