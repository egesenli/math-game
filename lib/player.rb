class Player
  attr_reader :name, :lives, :score

  def initialize(name)
    @name = name
    @lives = 3
    @score = 0
  end
end