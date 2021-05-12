VALID_CHOICES = %w[rock paper scissors lizard spock]

ABBREVIATED_CHOICES = {
  'r' => 'rock',
  'p' => 'paper',
  'sc' => 'scissors',
  'l' => 'lizard',
  'sp' => 'spock'
}

WINNING_CHOICES = {
  'rock' => ['scissors', 'lizard'],
  'paper' => ['rock', 'spock'],
  'scissors' => ['paper', 'lizard'],
  'spock' => ['scissors', 'rock'],
  'lizard' => ['paper', 'spock']
}

WINNING_CHOICES_ABBREVIATED = {
  'r' => ['sc', 'l'],
  'p' => ['r', 'sp'],
  'sc' => ['p', 'l'],
  'sp' => ['sc', 'r'],
  'l' => ['p', 'sp']
}

def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
  WINNING_CHOICES[first].key?(second) || WINNING_CHOICES_ABBREVIATED[first].key?(second)
end

def display_result(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def display_result_abbreviated(player, computer)
  if win_abbreviated?(player, computer)
    prompt("You won!")
  elsif win_abbreviated?(computer, player)
    prompt("Computer won!")
  else 
    prompt("It's a tie!")
  end
end

selection = <<-MSG
    'r' or 'rock'
    'p' or 'paper'
    'sc' or 'scissors'
    'l' or 'lizard'
    'sp' or 'spock'
    MSG

loop do
  choice = ''
  loop do
    prompt('Welcome to rock, paper, scissors, spock, and lizard.')
    prompt('The first to 5 wins and will be crowned the Grand Champion!')
    prompt('Choose one of the following.')
    puts selection
    choice = gets.chomp.downcase

    if VALID_CHOICES.include?(choice)
      break
    elsif ABBREVIATED_CHOICES.key?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_result(choice, computer_choice) || 
  display_result_abbreviated(choice, computer_choice)

  prompt("Would you like to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing. Good bye!")
