require 'game'

describe Game do

  let(:testplayer1) { double :player }
  let(:testplayer2) { double :player }
  # use of player doesn't link directly to player class, but demonstrates
  # that it is doubling that class.
  let(:testgame) { Game.new(testplayer1, testplayer2) }

  it "instantiates with players" do
    expect(testgame).to be_instance_of Game
  end

  it "player receives damage when attacked" do
    expect(testplayer2).to receive :receive_damage
    testgame.attack(testplayer2)
  end

end
