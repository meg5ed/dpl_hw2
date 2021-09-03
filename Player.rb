<<<<<<< HEAD
class Player
  attr_accessor :name, :wallet 
  def initialize 
    puts "What is your name?"
    @name = gets.strip
    @wallet = 100.00
  end
end
=======
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

>>>>>>> f3c405ad40ce6b840a2da660627db393603a25fb
