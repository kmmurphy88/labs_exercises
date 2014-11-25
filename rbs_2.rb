class RockPaperScissors

  def initialize
    @computer_points = 0
    @user_points = 0
  end

  def setup
    puts "It's time to play Rock, Paper, Scissors"
    puts "We will play several round to determine the 'best of'. Enter the \n
    number of games you'd like to play:"
    @number_of_games = gets.chomp.to_i
    @game_number = 1
  end

  def play_game
    @rps_options = ['rock', 'paper', 'scissors']
    @computer_choice = @rps_options.sample
    @user_choice = $stdin.gets.chomp.downcase
    #TO DO: Add error checking to make sure user inputs a regulation item
  end

  def options (rock, paper, scissors)
    @player_choice = gets.chomp.downcase
    @computer_choice = options.sample

  end
















  def play_game
    @rps_options = ['rock', 'paper', 'scissors']
    @computer_choice = @rps_options.sample
    @user_choice = $stdin.gets.chomp.downcase
    #TO DO: Add error checking to make sure user inputs a regulation item
  end

  def resolve_game
    case [@user_choice, @computer_choice]
    when ['rock', 'scissors'], ['scissors', 'paper'], ['paper', 'rock']
      puts "\n**** YOU WIN! ****"
      @user_points += 1
      @game_number += 1
    when ['rock', 'rock'], ['scissors', 'scissors'], ['paper', 'paper']
      puts "\n**** YOU TIED! ****"
      puts "A draw! There needs to be a winner. We will replay game #{@game_number}"
    when ['rock', 'paper'], ['scissors', 'rock'], ['paper', 'scissors']
      puts "\n**** YOU LOSE ****"
      @computer_points += 1
      @game_number += 1
    else
      puts "\n**** DO OVER!!! ****\nYou picked an ineligible item!!!"
    end

    puts "\nThe computer chose: #{@computer_choice.upcase}"
    puts "You chose: #{@user_choice.upcase}"
    puts "Score: You #{@user_points}; Computer #{@computer_points}"

    if @user_points == @computer_points + 1 || @computer_points == @user_points + 1
      @margin_of_victory = "by a thread!"
    elsif
      @margin_of_victory = "convincingly!"
    end

    case
    when @user_points > (@tournament_length / 2)
      puts "You have won the tournament #{@margin_of_victory}".upcase
      exit
    when @computer_points > (@tournament_length / 2)
      puts "The computer has won the tournament #{@margin_of_victory}".upcase
      exit
    end
  end

  def run
    loop do
      start_game
      play_game
      resolve_game
    end
  end
end

game = RockPaperScissors.new
game.setup
game.run

def game_on

end
  player_choice = lets_play_a_game()

  if ["rock", "paper", "scissors"].include? player_choice
    puts "You chose #{player_choice}"
  elsif player_choice != ["rock", "paper", "scissors"]
    puts "Invalid entry, dumbass."
    lets_play_a_game
  end

  computer_choice = rand

  if computer_choice < 0.33
    computer_choice = "rock"
  elsif computer_choice > 0.66
    computer_choice = "paper"
  else
    computer_choice = "scissors"
  end

  puts "Computer chose #{computer_choice}"

  if player_choice == computer_choice
    puts "tie game"
    @tie_game +=1
  elsif player_choice == "rock" && computer_choice == "scissors"
    puts "You win. Lucky bastard."
    @player_score +=1
  elsif player_choice == "paper" && computer_choice == "rock"
    puts "You win. Lucky bastard."
    @player_score +=1
  elsif player_choice == "scissors" && computer_choice == "paper"
    puts "You win. Lucky bastard."
    @player_score +=1
  else
    puts "You lose, sucka!"
    @computer_score += 1
  end
  puts "Would you like to play again?"
  player_answer = gets.chomp
   if player_answer == "yes" || player_answer == "y"
     rock_paper_scissors
   else
       puts "Thanks for playing, the final score is  player #{@player_score}, \n
      computer #{@computer_score} and #{@tie_game} tie games"
   end
end

rock_paper_scissors
