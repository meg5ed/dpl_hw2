require_relative 'Card'

class Deck

  attr_accessor :cards


  def initialize
    @ranks = %w(A 2 3 4 5 6 7 8 9 10 J Q K)
    @suits = %w(Spades Diamonds Clubs Hearts)
    @cards = []
    generate_deck
  end

  def shuffle_cards
    @cards.shuffle
  end

  def pull_card
    shuffle_cards.first
  end

  def generate_deck
    @suits.each do |suit|
      @ranks.size.times do |i|
        #Ternary Operator
        color = (suit == 'Diamonds' || suit == 'Hearts') ? 'Red' : 'Black'
        @cards << Card.new(@ranks[i], suit, color)
        #puts "#{@cards}"
      end
    end
  end

  def display_cards
    @cards.shuffle.each do |card|
      puts "#{card.rank} #{card.suit} #{card.color}"
    end
  end

end

#my_deck = Deck.new()