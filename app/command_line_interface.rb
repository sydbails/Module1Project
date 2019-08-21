require 'most_used_function'

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
        end
    # if username && first name exists in users table -- move to main menu (call main menu method)
    if User.find_by(username: username, first_name: first_name)
        main_menu
    # else User.new("username", "first_name") -- move to main menu
    else 
        User.create(username: username, first_name: first_name)
    end
end


def get_random_joke
    puts "Please type in a selection from one of the following categories: 
    animal, career, celebrity, dev, explicit, fashion, food, history, money, 
    movie, music, political, religion, science, sport, or travel."
    puts ""
    user_input = gets.chomp
    if user_input == 'exit'
        exit_now
    else 
        get_random_joke_by_category_from_api(user_input)
    end
end

# def add_joke_to_database
#     Joke.new(content: the_joke)

def view_my_favorite_jokes

end

def view_other_users_favorite_jokes
end

