def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(num)
  puts "Your cards add up to #{num}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
 return gets
end

def end_game(num)
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  total = deal_card + deal_card
  display_card_total(total)
  return total
end

def hit?(current_total)
  while true
  prompt_user
  turn = get_user_input
  turn = turn.chomp
  if turn == 'h'
    total = current_total + deal_card
    return total
  elsif turn == 's'
    return current_total
else
  invalid_command
end
end
  
end

def invalid_command
  puts "Please enter a valid command"
end

def runner
  welcome
  total = initial_round
  while total < 22
  subs = total
  total = hit?(total)
  if total != subs
  display_card_total(total)
end
  if total> 21
    flag = false 
  end 
end
  end_game(total)
end