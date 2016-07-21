require 'player'
describe Player do
  subject(:player1){ Player.new('Nomi') }
  it 'returns its name' do
    expect(player1.name).to eq 'Nomi'
  end
end
