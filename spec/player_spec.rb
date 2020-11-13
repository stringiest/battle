require 'player'

describe Player do
  it "knows its name" do
    subject = Player.new("Ernie")
    expect(subject.name).to eq "Ernie"
  end

  
end
