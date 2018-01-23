puts " lets play a game of rock, paper, scissors"
loop do

  options = ["rock", "paper", "scissors"]
   computer_choice = options[rand(options.length)]

  puts "What's your choice?"
  user_input = gets.chomp.downcase

  while !(user_input == "rock" || user_input == "paper" || user_input == "scissors")
   puts "Invalid choice, enter Rock, Paper, or Scissors"
   puts "What's your choice?"
   user_input = gets.chomp.downcase
  end
  if (user_input == "rock" || user_input == "paper" || user_input == "scissors")
   if (user_input === computer_choice)
     puts "We picked the same option, haha!"

   elsif (user_input == "rock" && computer_choice == "scissors")
     puts "Great work, you win!"
   elsif (user_input == "rock" && computer_choice == "paper")
     puts "sorry, paper beats rock"

   elsif (user_input == "paper" && computer_choice == "scissors")
     puts "Nope, scissors cut paper"
   elsif (user_input == "paper" && computer_choice == "rock")
     puts "paper beats rock, you win!"

   elsif (user_input == "scissors" && computer_choice == "rock")
     puts "no chance"
   elsif (user_input == "scissors" && computer_choice == "paper")
     puts "scissors cuts paper, you win!"
   end
  puts "Wanna play again? (yes/no)"
  answer = gets.chomp.downcase
  break if answer == "no"
  end
end
