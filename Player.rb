require_relative 'wallet'


class Player 
  attr_accessor :name, :wallet

  def initialize
    puts "Enter your username:"
    @name = gets.strip
    puts "Enter how much you want to add to your bankroll:"
    @wallet = gets.strip.to_f
  end

end

