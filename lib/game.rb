class Game
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