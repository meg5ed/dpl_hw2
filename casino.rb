# Start game player has a name and an initial bankroll
# Player can go to different games via menu
# Slots
# High / Low
# Player places bet and wins / loses (hint: rand)
# Player's bankroll goes up and down with wins and losses

class player
attr_accessor :username, :bankroll

def initialize
  @player = init_person

@username = username
@bankroll = bankroll
end

def init_person
  puts "Enter your username:"
  name = gets.strip
  puts "Enter how much you want to add to your bankroll:"
  bankroll = gets.strip.to_i

def wins(num)
  @bankroll = num
end

def lose(num)
  @bankroll = num

end


end

new_user = Person.new{"Meg", 2000}

puts new_user