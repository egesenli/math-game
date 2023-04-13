class Scoreboard
  def initialize(players)
    @players = players
  end

  def to_s
    scores = @players.map { |player| "#{player.name}: #{player.score} points, #{player.lives} lives" }
    scores.join(" vs ")
  end

  def update_score(player)
    player.add_point
  end

  def update_lives(player)
    # Update lives
  end
end