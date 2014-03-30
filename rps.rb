
PAIRS = {rock: "scissors", scissors: "paper", paper: "rock"}

def check_who_wins(user_choice, computer_choice)
  if (user_choice == computer_choice)
    result = "Tie"
  elsif (PAIRS[user_choice.to_sym] == computer_choice)
    result = "You Win!!!"
  else
    result = "You Lose :-("
  end
  result
end

def rps
  puts "Choose rock, paper or scissors"
  user_choice = gets.chomp.downcase

  computer_choice = PAIRS.values.sample
  puts "computer choose #{computer_choice}"

  check_who_wins(user_choice, computer_choice)

end

