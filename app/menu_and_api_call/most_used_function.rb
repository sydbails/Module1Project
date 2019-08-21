# ends program whenever user needs to leave
def exit_now
    exit
end
require 'pry'
def get_personalized_joke_by_name_from_api(name)
    # Retrieve a random personalized chuck joke using specified name
    # https://api.chucknorris.io/jokes/random?name=Bob

    url_with_name = "https://api.chucknorris.io/jokes/random?name=#{name}"

    joke_data = RestClient.get(url_with_name) 
    joke_hash = JSON.parse(joke_data)
    puts ""
    puts joke_hash["value"]
end

def get_random_joke_by_category_from_api(category)
    # Retrieve a random Chuck joke in JSON format url 
    # https://api.chucknorris.io/jokes/random

    # Retrieve a random Chuck joke from a specified category
    # https://api.chucknorris.io/jokes/random?category={category}

    # url_without_category = "https://api.chucknorris.io/jokes/random"
    # url_with_category_hardcoded = "https://api.chucknorris.io/jokes/random?category=money"
    url_with_category = "https://api.chucknorris.io/jokes/random?category=#{category}"
    
    joke_data = RestClient.get(url_with_category) 
    joke_hash = JSON.parse(joke_data)
    puts ""
    puts joke_hash["value"]
end
binding.pry

def random_joke_or_personalized_joke
    puts "Would you like a Chuck Norris joke? Press 1. For a personalized joke, press 2."
    user_input = gets.chomp
    if user_input == 1
        get_random_joke_by_category_from_api
    elsif user_input == 2
        get personalized_joke_from_api
    else 
        puts "Invalid entry, please try again!" 
    end
end


def main_menu
    #user_input = gets.chomp you want to collect this information after users sees selection
    puts "Please select number that coincides with menu option."
    puts ""
    puts "(1) Find joke"
    puts "(2) View my favorited jokes"
    puts "(3) View my pal's favorited jokes"
    puts "(4) Exit"
    puts ""
    user_input = gets.chomp
    
    if user_input == 1
        random_joke_or_personalized_joke
        # build out function that is a menu for which kind of joke the user will want
    elsif user_input == 2
        view_my_jokes
    elsif user_input == 3
        # need to write method that asks the user to input their friends username which will query and return a list
    elsif user_input == 4
        exit
    else 
        puts "That was not a valid entry -- Chuck Norris wouldn't be proud. Please try again!"
    end
end

# def favorite_this_joke
    
# end

def whats_next_after_joke_is_told
    puts "That was a kneeslapper! What's next for you? Press 1 for 'main menu' , 2 to 'favorite' or 3 for another joke. Type 'exit' to get out of here!"
    user_input = gets.chomp
    
    if user_input == 'exit'
        exit
    elsif 
        user_input == 1
        main_menu
    elsif 
        user_input == 2
        # favorite_this_joke
    elsif 
        user_input == 3
        random_joke_or_personalized_joke
    else 
        puts "That was not a valid entry -- Chuck Norris wouldn't be proud. Please try again!" 
    end
end


    

