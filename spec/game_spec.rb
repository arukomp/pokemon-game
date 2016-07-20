require "game"

describe Game do
  let(:player1){double "player1"}

  describe "#atack" do
    it "damages chosen player" do
      expect(player1).to receive :receive_damage
      subject.attack(player1)
    end
  end
end
