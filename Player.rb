class Player
  attr_accessor :name, :wallet 
  def initialize 
    puts "What is your name?"
    @name = gets.strip
    @wallet = 100.00
  end
end