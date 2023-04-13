class Scoreboard
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def to_s
    scores = @players.map { |player| "#{player.name}: #{player.score}" }
    scores.join(" vs ")
  end
end