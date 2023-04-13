class Scoreboard
  def initialize(players)
    @players = players
  end

  def to_s
    scores = @players.map { |player| "#{player.name}: #{player.score}" }
    scores.join(" vs ")
  end
end