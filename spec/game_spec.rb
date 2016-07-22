require 'game'

describe Game do

  subject(:game) { described_class.new(player_1, player_2) }
  subject(:finished_game) { described_class.new(dead_player, player_2) }
  let(:player_1) { double :player_1, hit_points: 60 }
  let(:player_2) { double :player_2, hit_points: 60 }
  let(:dead_player) { double :player, hit_points: 0 }

  describe "#game_over?" do
    it "returns false if no one is at 0 HP" do
      expect(game.game_over?).to be false
    end

    it "returns true if at least one player is at 0 HP" do
      expect(finished_game.game_over?).to eq true
    end
  end

  describe "#loser" do
    it "returns a player one less than 0 HP" do
      expect(finished_game.loser).to eq dead_player
    end
  end

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

  describe '#opponent' do
    it 'shows the opponent' do
      expect(game.opponent).to eq player_2
    end
  end



end
