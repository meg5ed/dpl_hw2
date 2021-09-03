require_relative 'casino'
require_relative 'player'
​
 class Rps
    def initialize(player)
    @player = player
    start
    end
​
​
    def start
      puts "How much do you want to bet?"
        wager = gets.strip.to_i
        if wager > 0
          puts "Let's play rock, paper, scissors"
          #scores
          compScore = 0
          humanScore = 0
​
          until compScore == 5 || humanScore == 5
            puts "Select your weapon. Rock, paper or scissors?"
            @player = gets.chomp.downcase
            comp = ["rock", "paper", "scissors"].sample
          #human wins
            if (@player == "rock" && comp == "scissors") || (@player== "scissors" && comp == "paper") || (@player == "paper" && comp == "rock")
              p "You won!"
              humanScore += 1
            #draws
            elsif (@player== "rock" && comp == "rock") || (@player == "paper" && comp == "paper") || (@player == "scissors" && comp == "scissors")
              p "Draw! No point awarded"
            #computer wins
            else compScore += 1
              p "You lose."
            end
            #Resulted Scores
            p "Human Score: #{humanScore}"
            p "Computer Score: #{compScore}"
              #Resulted Choices
            p "Human chose: #{@player}"
            p "Computer chose: #{comp}"
          end
          #Tell who wins
          p humanScore > compScore ? ("YOU WIN!") : ("COMPUTER WINS!.")
          end
        end
  end

  






