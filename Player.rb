class Player
  attr_accessor :username,  :bankroll

  def initialize(username, bankroll)

    @username = username
    @bankroll = bankroll
  end

  def win(num)
    @bankroll += num
  end

  def lose(num)
    @bankroll -= num
  end

end