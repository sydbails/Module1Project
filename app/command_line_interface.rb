require 'pry'
require_relative 'models/user'
require_relative 'models/joke'
require_relative 'models/favorite'

def welcome
    print "\e[2J\e[f"
    # insert Chuck Norris picture 
    puts "Hi, welcome to a joke generator that Chuck Norris himself would approve."
    puts ""
    puts "Please enter username or type 'exit' to exit."
     # username = gets.chomp
    user_input = gets.chomp
        if user_input == "exit"
            exit
        else
            username_input = user_input
        end 
        
    puts "Please enter your first name."
    user_input = gets.chomp
        if user_input == "exit"
            exit
        else 
            first_name_input = user_input
        end
        user = User.find_or_create_user_query(username_input, first_name_input)
        main_menu(user)
end

# TEST COMMENT
