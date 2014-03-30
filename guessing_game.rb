def guessing_game
  computer_choice = (1..100).to_a.sample

  puts "pick number between 1-100"
  user_choice = get_number
  p computer_choice
  high_low(computer_choice, user_choice)

end

def high_low(computer_choice, user_choice)
  if user_choice > computer_choice
    puts 'too high, choose again'
    user_choice = get_number
    high_low(computer_choice, user_choice)
  elsif user_choice < computer_choice
    puts 'too low, choose again'
    user_choice = get_number
    high_low(computer_choice, user_choice)
  else
    puts 'You win, play again? y/n?'
    user_input = gets.chomp
    if user_input == 'y'
      guessing_game
    else
      'goodbye'
    end
  end
end

def get_number
  gets.chomp.to_i
end