# require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
end

def display_card_total(total)
  total
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp()
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  sum = 0
  2.times {sum += deal_card}
  display_card_total(sum)
  sum
end

def hit?(sum)
  prompt_user
  user_input = get_user_input
     if user_input == 's'
      sum
    elsif user_input == 'h'
      sum += deal_card
    else
      invalid_command
      prompt_user
      get_user_input
    end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  sum = initial_round
  new_sum = hit?(sum)
  display_card_total(new_sum)
  if new_sum > 21
    end_game(new_sum)
  end

end

# binding.pry
    
