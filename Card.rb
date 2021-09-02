class Card
  attr_accessor :rank, :suit, :color
  
  def initialize(rank, suit, color)
    @rank = rank
    @suit = suit
    @color = color
  end

  def hl_to_i
    case @rank
    when 'A'
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


  def blackjack_to_i
    case @rank
    when 'J'
      return 10
    when 'Q'
      return 10
    when 'K'
      return 10
    else
      @rank.to_i
    end
  end

  def equalTo21
    puts "would you like this to be 1 or 11 (y/n)"
    one_or_eleven = gets.strip.to_s

  end

  def to_s
    return "#{@rank} of #{@suit} (#{@color})"
  end

end

