class Card
  attr_accessor :rank, :suit, :color
  
  def initialize(rank, suit, color)
    @rank = rank
    @suit = suit
    @color = color
  end

  def to_i
    case @rank
    when 'A'
      # one = 1
      # eleven = 11
      # puts "would you like this card to be worth #{one} or worth #{eleve}"?
      # case @choice
      # when 1
      #   puts "your total is "
      # when 11
      #   puts "your total is "
      # end

      return 1
    when 'J'
      return 11
    when 'Q'
      return 12
    when 'K'
      return 13
    else
      @rank.to_i
    end
  end

    def to_s
      return "#{@rank} #{@suit} #{@color}"
    end

end