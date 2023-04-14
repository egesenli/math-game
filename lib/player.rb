class Player
  attr_reader :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def answer_question(question)
    print "#{@name}: #{question} > "
    answer = gets.chomp.to_i

    if answer == question.answer
      puts "YES! You are correct."
      true
    else
      puts "Seriously? No!"
      @lives -= 1
      false
    end
  end
end
