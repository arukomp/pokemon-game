require 'player'
describe Player do
  subject(:player1) { Player.new('Nomi') }
  subject(:player2) { Player.new('Mittens') }

  describe '#name' do
    it 'returns its name' do
      expect(player1.name).to eq 'Nomi'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(player1.hit_points).to eq 60
    end
  end


  describe '#receive_damage' do
    it 'reduces the player hit points' do
      allow(Kernel).to receive(:rand).and_return(10)
      expect { player2.receive_damage }.to change { player2.hit_points}.by(-10)
    end
   end

end
