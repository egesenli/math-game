class Player
  attr_reader :name, :lives, :score

  def initialize(name)
    @name = name
    @lives = 3
    @score = 0
  end

  def answer_question(question)
    puts "#{@name}: What is #{question}?"
    answer = gets.chomp.to_i

    if answer == question.answer
      puts "Correct!"
    else
      puts "Incorrect! You lose a life."
      lose_life
    end
  end

  def lose_life
    @lives -= 1
  end
end