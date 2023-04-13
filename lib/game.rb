require_relative 'player'
require_relative 'question'
require_relative 'scoreboard'

class Game
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @scoreboard = Scoreboard.new(@player1, @player2)
    @current_player = @player1
  end

  def play
    loop do
      question = Question.new
      @current_player.answer_question(question)

      @scoreboard.update_lives(@current_player)
      @scoreboard.display_score

      break if game_over?

      switch_player
    end

    puts "Game over! #{winner.name} wins with a score of #{winner.score}."
    puts "#{loser.name} has a score of #{loser.score}."
  end

  private

  def switch_player
    @current_player = @current_player == @player1 ? @player2 : @player1
  end

  def game_over?
    @player1.lives == 0 || @player2.lives == 0
  end

  def winner
    @player1.score > @player2.score ? @player1 : @player2
  end

  def loser
    @player1.score < @player2.score ? @player1 : @player2
  end
end