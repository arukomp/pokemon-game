require 'player'

describe Player do
  let(:name){"Player_name"}
  subject { described_class.new(name) }
  it "returns it's name" do
    expect(subject.name).to eq "Player_name"
  end

  describe "hit points" do
    it "shows hit points" do
      expect(subject.hp).to eq 100
    end
  end

  describe "doing damage" do
    it "deals damage to the player" do
      expect{ subject.deal_damage }.to change{ subject.hp }.by -10
    end
  end
end
