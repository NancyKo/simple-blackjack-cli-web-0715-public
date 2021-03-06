def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  answer = gets.chomp
  answer
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
  # return allows you to break out early. That's why return after the method call. If we return before the method call, we never get to invoke the method. 
end

def hit?(card_total)
  # code hit? here
  prompt_user
  answer = get_user_input
    if answer == 's'
      card_total
    elsif answer == 'h'
      hand = deal_card + card_total
      hand
    else
    end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  score = initial_round
  until score > 21
    score = hit?(score)
    display_card_total(score)
  end 
    end_game(score)
end
    
