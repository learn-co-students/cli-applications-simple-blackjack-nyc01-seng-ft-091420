require 'pry'

def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  random_num = rand(11) + 1
  random_num
end

def display_card_total(num)
  # code #display_card_total here
  total = "Your cards add up to #{num}"
  puts total
end

def prompt_user
  # code #prompt_user here
  message ="Type 'h' to hit or 's' to stay"
  puts message
  message
end

def get_user_input
  # code #get_user_input here
  gets prompt_user
end

def end_game(num)
  # code #end_game here
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card1 = deal_card
  card2 = deal_card
  card_total = card1 + card2
  display_card_total(card_total)
  card_total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
  
end

def hit?(card_total)
  prompt_user 
  user_input = get_user_input 
  if user_input == "h"
    card_total += deal_card 
  elsif user_input == "s"
    card_total 
  else
    invalid_command
    prompt_user
    get_user_input
  end
end



#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome #introduce the game
  sleep 0.75
  card_total = initial_round #determine your current total & tell user what number they currently have
  until card_total > 21 #continue game until user loses
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total) #prints out once user has lost
end




