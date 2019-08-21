require 'pry'
require_relative 'models/user'
require_relative 'models/joke'
require_relative 'models/favorite'

$current_first_name = ""

def welcome
    # insert Chuck Norris picture 
    puts "Hi, welcome to a joke generator that Chuck Norris himself would approve."
    puts ""
    puts "Please enter username or type 'exit' to exit."
     # username = gets.chomp
    user_input = gets.chomp
        if user_input == "exit"
            exit
        else
            username = user_input
        end
        
    puts "Please enter your first name."
    user_input = gets.chomp
        if user_input == "exit"
            exit
        else 
            first_name = user_input
            current_first_name = user_input
        end

        User.find_or_create_user_query(username, first_name)
        main_menu 
end


def view_my_favorite_jokes

end

def view_other_users_favorite_jokes
end