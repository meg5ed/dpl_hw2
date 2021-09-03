<<<<<<< HEAD
require_relative 'player'
require_relative 'rps'
=======
require_relative 'Player'
require_relative 'Deck'
require_relative 'Wallet'
require_relative 'Card'
require_relative 'high_low'
require_relative 'Blackjack'
>>>>>>> f3c405ad40ce6b840a2da660627db393603a25fb


class Casino
  def initialize
<<<<<<< HEAD
  @player = Player.new
 
  show_menu
  
=======
    @player = Player.new
    show_menu
>>>>>>> f3c405ad40ce6b840a2da660627db393603a25fb
  end

  def show_menu
    begin
<<<<<<< HEAD
      puts 'What do you want to do?'
      puts '1. Rock Paper Scissors'
      puts '2. High / Low'
      puts '3. CHeck Wallet'
      puts '4. Exit'
=======
      puts "You have $#{@player.wallet} in your account"
      puts "What game do you want to play?"
      puts "1. Slots"
      puts "2. High/Low"
      puts "3. Blackjack"
      puts "4. Check wallet"
      puts "5. Exit"
>>>>>>> f3c405ad40ce6b840a2da660627db393603a25fb
      response = gets.strip.to_i
      raise "Bad Input" unless response > 0 && response < 5
      case response
<<<<<<< HEAD
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
=======
        when 1
          # todo: slots

        when 2
          # todo: high low
          HighLow.new(@player)

        when 3
          # blackjack 
          Blackjack.new(@player)
        when 4
          puts "You have $#{player.wallet} in your account"
        when 5
          puts "Have a nice day!"
          exit
        else
          raise 
        end
      show_menu
>>>>>>> f3c405ad40ce6b840a2da660627db393603a25fb
      rescue StandardError => e
        puts e
        retry
      end
  end
end

<<<<<<< HEAD
Casino.new
=======
Casino.new

>>>>>>> f3c405ad40ce6b840a2da660627db393603a25fb
