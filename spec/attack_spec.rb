require 'attack'

describe Attack do
  subject(:attack) { described_class }
  let(:player_2) { double :player_2 }

  describe '#run' do
    it 'damages the player' do
      expect(player_2).to receive(:receive_damage)
      attack.run(player_2)
    end
  end
end
