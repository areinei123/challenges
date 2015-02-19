p_score = 0
c_score = 0
rps = ["rock", "paper", "scissors", "rock"]

until p_score>1 || c_score>1
  puts "Player Score: #{p_score}, Computer Score: #{c_score}"
  puts "Choose rock (0), paper (1), or scissors (2): "
  user = gets.to_i
  if user == 0 || user == 1 || user == 2
    puts 'Player chose: ' + rps[user]
    cpu = rand(3)
    puts 'Computer chose: ' + rps[cpu]
    if user == 0 && cpu == 2
      user = user + 3
    elsif cpu == 0 && user == 2
      cpu = cpu + 3
    end
    if user>cpu
      puts rps[user] + ' beats ' + rps[cpu] + ', Player wins that round.'
      p_score=p_score+1
    elsif cpu>user
      puts rps[cpu] + ' beats ' + rps[user] + ', Computer wins that round.'
      c_score=c_score+1
    elsif cpu == user
      puts "Tie, please choose again."
    end
  else
    puts "Invalid entry, please try again."
  end
  puts
end
puts "Player Score: #{p_score}, Computer Score: #{c_score}"
if p_score>c_score
  puts "You win! Dang..."
else
  puts "I win! I knew Computers were the best!"
end
