class Player
attr_reader :name
attr_accessor :hp

  def initialize(name, hp = 60)
    @name = name
    @hp = hp
  end

end
