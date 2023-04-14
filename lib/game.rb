require_relative 'player'
require_relative 'question'
require_relative 'scoreboard'

class Game
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @scoreboard = Scoreboard.new([@player1, @player2])
    @current_player = @player1
  end

  def play
    loop do
      question = Question.new
      correct = @current_player.answer_question(question)

      @scoreboard.update_lives(@current_player, correct)
      puts @scoreboard.to_s

      if game_over?
        winner = @player1.lives > 0 ? @player1 : @player2
        puts "#{winner.name} wins with a score of #{@scoreboard.instance_variable_get(:@lives)[winner]}/3"
        puts "GAME OVER"
        puts "Good bye!"
        return
      end

      puts "---\nNEW TURN"
      switch_player
    end
  end

  private

  def switch_player
    @current_player = @current_player == @player1 ? @player2 : @player1
  end

  def game_over?
    @player1.lives == 0 || @player2.lives == 0
  end
end