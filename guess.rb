class Guessing_game
	def initialize
		@guesses = 0
		@answer = 1 + rand(100)
	end

	def make_guess
		puts "Guess a number between 1 and 100"
		guess = gets.chomp
		until /^([+-]?[0-9])/.match(guess)
			puts "Guess a number between 1 and 100"
			guess = get.chomp
		end
		if guess.to_i > @answer
			@guesses += 1
			puts "Guess lower."
			make_guess
		elsif guess.to_i < @answer
			@guesses += 1
			puts "Guess higher"
			make_guess
		else guess.to_i == @answer
			@guesses += 1
			puts "You guessed correctly! It only took #{@guesses} guesses"
		end
	end
end

newGame = Guessing_game.new
newGame.make_guess