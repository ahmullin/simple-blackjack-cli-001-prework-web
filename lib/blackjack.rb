def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  hit_or_stay = gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  total = deal_card + deal_card
  display_card_total(total)
  deal_card + deal_card
end

def hit?(total)
  prompt_user
  input = get_user_input
    if input == "h"
    new_total = total + deal_card
    elsif input == "s"
      new_total = total
    else
      invalid_command
      prompt_user
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
  new_total = initial_round
  until new_total > 21
    new_total = hit?(new_total)
    display_card_total(new_total)
  end
  if new_total > 21
  end_game(new_total)
  end 
    
end
    





