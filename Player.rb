require_relative 'wallet'


class Player < Wallet
  attr_accessor :player

  def initialize
    @player = init_person

  end

  def init_person
    puts "Enter your username:"
    @name = gets.strip
    puts "Enter how much you want to add to your bankroll:"
    @amount = gets.strip.to_f

  end

  # def add_to_balance(amount)
  #   @wallet += amount

  # end
  # def win(num)
  #   @wallet += num
  # end

  # def lose(num)
  #   @wallet -= num
  # end


end

