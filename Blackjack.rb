require_relative 'Deck'
require_relative 'Player'
require 'colorize'

class Blackjack

  def initialize(player)
    @player = player
    @deck = Deck.new
    play
  end


  def play
    puts "How much do you want to wager?"
    @wager = gets.strip.to_i
      if @wager > 0 && @wager <= @player.wallet
        first_card = @deck.pull_card
        second_card = @deck.pull_card
        puts "The cards in your hand are #{first_card} and #{second_card}"
        @total = first_card.blackjack_to_i + second_card.blackjack_to_i
        puts "That equals #{@total}" 
        puts "Its the dealers turn"
        #dealer
        # if dealer total
        # end
        equals21(@total, @wager)
      end
  end


def equals21(total, wager)
  if total == 21
    is_correct = true
  else
    is_correct = false
  end
  if total == 21
    puts "You won! your total is now #{@player.wallet}"
    @wager *= -1 if !is_correct
    @player.wallet += wager
    play_again 
  elsif total > 21
    puts "You lost, your total is now #{@player.wallet}?"
    @wager *= -1 if !is_correct
    @player.wallet += @wager 
    play_again
  else
    puts "would you like to hit? (y/n)?"
    @answer = gets.strip.to_s
    hit(@answer)
  end
end

  def hit(answer)
    if answer == 'y' 
      new_card = @deck.pull_card
      @total += new_card.blackjack_to_i
      puts "That equals #{@total}"
      equals21(@total, @wager)
    end
  end


  def play_again
    puts "Play again? (y/n)"
    response = gets.strip.to_s
    if response ==  'y'
      play
    else
      puts "would you like to go to main menu? (y/n)"
      go_home = gets.strip.to_i
      if go_home == 'y'
        show_menu
      else
        play_again
      end
    end
  end

  def dealer
    puts "Dealers turn".red
    first_card = @deck.pull_card
    second_card = @deck.pull_card
    puts "Dealers cards are: #{first_card} and #{second_card}".red
    @total = first_card.blackjack_to_i + second_card.blackjack_to_i
    puts "That equals #{@total}".red
  end
end


# P = Player.new
# BJ = Blackjack.new(P)
