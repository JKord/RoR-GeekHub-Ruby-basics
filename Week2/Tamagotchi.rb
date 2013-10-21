class Pet
  def initialize name
    @name = name
    @asleep = false
    @stuffInBelly = 10
    @stuffInIntestine = 0

    puts @name + " born.\n\n"
  end

  def feed
    puts 'You forages ' + @name
    @stuffInBelly = 10
    passageOfTime
  end

  def walk
    puts 'You are walking a ' + @name
    @stuffInIntestine = 0
    passageOfTime
  end

  def putToBed
    puts 'You put ' + @name + ' sleep.'
    @asleep = true
    3.times do
      if @asleep
        passageOfTime
      end
      if @asleep
        puts @name + ' snores, filling the room with smoke.'
      end
    end

    if @asleep
      @asleep = false
      puts @name + ' slowly waking up.'
    end
  end

  def toss
    puts 'You toss ' + @name + ' in air.'
    puts 'He giggles, singes your eyebrows.'
    passageOfTime
  end

  def rock
    puts 'You gently rocked ' + @name
    @asleep = true
    puts 'He quickly dozed..'
    passageOfTime
    if @asleep
      @asleep = false
      puts '...but wakes up as soon as you stop pumping.'
    end
  end

  private

  def hungry?
    @stuffInBelly <= 2
  end

  def poopy?
    @stuffInIntestine >= 8
  end

  def passageOfTime
    if @stuffInBelly > 0
      @stuffInBelly = @stuffInBelly - 1
      @stuffInIntestine = @stuffInIntestine + 1
    else # Наш дракон страдает от голода!
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + ' hungry! In desperation, he ate YOU!'
      exit    # Этим методом выходим из программы.
    end

    if @stuffInIntestine >= 10
      @stuffInIntestine = 0
      puts 'Opanky! ' + @name + ' made a bad...'
    end

    if hungry?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts 'In the stomach of a ' + @name + ' hums...'
    end

    if poopy?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + ' jumps, because he wants to Gorsh...'
    end
  end
end

class Dragon < Pet
  def initialize name
    super

    @stuffInIntestine = 1
  end

  def allEating
    puts 'All of eating'
  end

  def walk
    puts 'You are fly a ' + @name
    @stuffInIntestine = 0
    passageOfTime
  end
end

class Dog < Pet
  def initialize name
    super
    stuffInBelly = 50
  end

  def allEating
    puts 'All of eating'
  end

  def walk
    puts 'You are fly a ' + @name
    @stuffInIntestine = 0
    passageOfTime
  end
end

class Cat < Pet
  def smile
    puts @name + ' smile'
  end
end


class Tamagotchi
  def initialize
    dragon = Dragon.new 'Dragon'
    dog = Dog.new 'Dog'
    cat = Cat.new 'Cat'

    cat.smile

    run dog
    run dragon
    run cat
  end

  def help
    puts 'This is automatic Tamagotchi'
  end

  def run obj
    obj.feed
    obj.toss
    obj.walk
    obj.putToBed
    obj.rock
    obj.putToBed
    obj.putToBed
    obj.putToBed
    obj.putToBed
  end
end

Tamagotchi.new