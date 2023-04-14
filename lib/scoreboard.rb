class Scoreboard
  def initialize(players)
    @players = players
    @lives = Hash.new(3)
  end

  def to_s
    scores = @players.map do |player|
      "#{player.name}: #{@lives[player]}/3"
    end
    scores.join(" vs ")
  end

  def update_lives(player, correct)
    @lives[player] -= 1 unless correct
  end

  def game_over?
    @lives.values.include?(0)
  end
end