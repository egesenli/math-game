class Scoreboard
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def display_score
    puts "Scoreboard:"
    puts "#{@player1.name}: #{@player1_score} points, #{@player1_lives} lives"
    puts "#{@player2.name}: #{@player2_score} points, #{@player2_lives} lives"
  end

  def update_score(player)
    if player == @player1
      @player1_score += 1
    else
      @player2_score += 1
    end
  end

  def update_lives(player)
    if player == @player1
      @player1_lives = player.lives
    else
      @player2_lives = player.lives
    end
  end
end