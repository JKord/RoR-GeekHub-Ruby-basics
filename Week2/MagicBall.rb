class MagicBall
  def initialize
    @answers = File.readlines('MagicBallAnswers.txt');
  end

  def help
    "Magic 8 Ball. exit - Exit"
  end

  def shake
    puts @answers[rand(@answers.length)]
  end

  def runShakes
    while true
      puts "\nWhat is your question?"
      case gets.chomp
        when 'help'
          this.help
        when 'exit'
          return
        else
          shake
      end
    end
  end
end

magicBall = MagicBall.new;
magicBall.runShakes