# Guess the Number
number = rand(1000)
guess = 0

until guess == number
  puts "Guess a number between 1 and 1000."
  guess = gets.chomp.to_i
    if guess > number
      puts "Guess again, your number was too high."
    elsif guess < number
      puts "Guess again, your number was too low."
    end
end
puts "Congratulations, you guessed the number!"
