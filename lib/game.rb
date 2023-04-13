class Game
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @scoreboard = Scoreboard.new(@player1, @player2)
    @current_player = @player1
  end
end