require_relative 'player'
require_relative 'rps'


class Casino
  def initialize
  @player = Player.new
 
  show_menu
  
  end

  def show_menu
    begin
      puts 'What do you want to do?'
      puts '1. Rock Paper Scissors'
      puts '2. High / Low'
      puts '3. CHeck Wallet'
      puts '4. Exit'
      response = gets.strip.to_i
      raise "Bad Input" unless response > 0 && response < 5
      case response
      when 1
       Rps.new(@player)
      when 2
        
      when 3 
        puts "You have #{@player.money}"
        show_menu
      when 4
        puts "Have a nice day!"
        exit
      else
        raise
      end
      rescue StandardError => e
        puts e
        retry
      end
  end
end

Casino.new