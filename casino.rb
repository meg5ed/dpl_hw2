require_relative ‘Player’
require_relative ‘Deck’
require_relative ‘Wallet’
require_relative ‘Card’
require_relative ‘high_low’
# Start game player has a name and an initial bankroll
# Player can go to different games via menu
# Slots
# High / Low
# Blackjack
# - you versus the dealer
# - a dealer deals cards out, you flip them over
# - you want to hit 21, but you don’t want to go over 21
# - every face card = 10
# - every ace can equal 1 or 11
# - dealer has to stay and not draw another card once dealer hits 17 or higher
# Player places bet and wins / loses (hint: rand)
# Player’s bankroll goes up and down with wins and losses
class Casino
  def initialize
    #create person
    @player = Player.new
    show_menu
  end
  def show_menu
    begin
      puts “What game do you want to play?”
      puts “1. Slots”
      puts “2. High/Low”
      puts “3. Blackjack”
      puts “4. Check wallet”
      puts “5. Exit”
      response = gets.strip.to_i
      raise ‘Bad Input’ unless response  > 0 && response < 6
      case response
        when 1
          # todo: slots
        when 2
          # todo: high low
          HighLow.new(@player)
        when 3
          # blackjack
        when 4
          puts “You have $ #{@player.amount}”
        when 5
          puts “Have a nice day!”
          exit
        else
          raise
        end
      show_menu
      rescue StandardError => e
      puts e
      retry
    end
  end
end
Casino.new
# def main_menu
#   puts “Main Menu: Please add money to your account! ”
#   @user = Player.new()
#   puts “You have loaded #{@user.current_balance}”
#   @option = gets.strip.to_i
#   case @options
#   when 1
#     puts “Option 1”
#   when 2
#     puts “Option 2"
#   when 3
#     puts “Option 3”
#   when 4
#     puts “Option 4"
#   when 5
#     puts “Option 5”
#   else
#     “That is not an option, please try again”
#     main_menu
#   end
# end
# main_menu