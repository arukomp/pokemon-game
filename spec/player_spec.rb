describe Player do
  let(:name){"Player_name"}
  described_class.new(name)
  it "returns it's name" do
    expect(subject.name).to eq "Player_name"
  end
end
