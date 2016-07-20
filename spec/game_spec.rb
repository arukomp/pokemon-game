require "game"

describe Game do
  subject(:game) { Game.new(player1, player2) }
  let(:player1){double "player1"}
  let(:player2){double "player2"}

  describe "#atack" do
    it "damages chosen player" do
      expect(player1).to receive :receive_damage
      subject.attack(player1)
    end
  end

  describe "players" do
    it 'has the player1' do
      expect(game.player1).to eq player1
    end

    it 'has player2' do
      expect(game.player2).to eq player2
    end
  end

  describe "#switch" do
    it "swithces turns" do
      expect{game.switch}.to change {game.player1}.to player2
    end
  end
end
