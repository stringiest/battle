require 'player'

describe Player do
  it "knows its name" do
    subject = Player.new("Annabel")
    expect(subject.name).to eq "Annabel"
  end
end
