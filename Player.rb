class Player
  attr_accessor :player

  def initialize
    @player = init_person

  end

  def init_person
    puts "Enter your username:"
    name = gets.strip
    puts "Enter how much you want to add to your bankroll:"
    bankroll = gets.strip.to_i


  end
  def win(num)
    @bankroll += num
  end

  def lose(num)
    @bankroll -= num
  end


end

player = Player.new()