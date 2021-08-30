class Wallet

  def initialize(money)
    @wallet = money
  end

  def add_money(money)
    @wallet += money
  end

  def subtract_money(money)
    @wallet -=money
  end

  def validate_moeny(money)
    if money > 0 && (@wallet - money) >=0
      true
    else
      false
    end
  end

    def current_balance(money)
      return @wallet
    end

end
