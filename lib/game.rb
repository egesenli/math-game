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
  end
end