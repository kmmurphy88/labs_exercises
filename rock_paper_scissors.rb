@computer_score = 0
@player_score = 0
@tie_game = 0

def lets_play_a_game
	puts "Choose rock, paper or scissors."
player_choice = gets.chomp.downcase
end

def rock_paper_scissors
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
