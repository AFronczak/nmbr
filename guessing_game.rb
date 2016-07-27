# [ ] Pick a random number between 1 and 100
# [ ] Prompt you for a guess
# [ ] If your guess is less than the program's number, it should tell you that you were low and let you guess again.
# [ ] If the guess is greater than the program's number, it should tell you that you were high and let you guess again.
# [ ] If your guess is correct, the program should tell you that you win and then quit.
# [ ] After 5 incorrect guesses, the program should tell you that you lose.
# [ ] Your code should use at least two methods. NOTE this doesn't say in a class -- but if you feel like there is a good data+behavior approach, go for it.
# [ ] This game should be run from the command line by typing "ruby guessing_game.rb".

number = rand(100)
tries = 1
# def higher
#   puts "guess was too low, guess again"
# end
#
# def lower
#   puts "guess was too high, guess again"
# end
#
# def correct
#   puts "You got it!"
# end
#
# def failed
#   puts "The number was #{guess}, try again"
# end
#
def turn
  tries += 1
end

puts "Guess a number between 1 and 100."
guess = 0
while tries < 6 && guess != number
  guess = gets.chomp.to_i
  if guess > number
    puts "too high"
    tries += 1
  elsif guess < number
    puts "too low"
    tries += 1
  end
  if tries == 6
    puts "You lose!"
  elsif guess == number
    puts "You're correct!"
  end
end
