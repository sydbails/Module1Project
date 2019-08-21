# ends program whenever user needs to leave
def exit_now
    exit
end

def get_personalized_joke_by_name_from_api(name)
    # Retrieve a random personalized chuck joke using specified name
    # https://api.chucknorris.io/jokes/random?name=Bob

    url_with_name = "https://api.chucknorris.io/jokes/random?name=#{name}"

    joke_data = RestClient.get(url_with_name) 
    joke_hash = JSON.parse(joke_data)
    personalized_joke = joke_hash["value"]
    
    Joke.create(content: personalized_joke)
    
    puts ""
    puts personalized_joke
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
    random_joke = joke_hash["value"]
    
    Joke.create(content: random_joke)

    puts ""
    puts random_joke
    
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

def random_joke_or_personalized_joke
    puts "Would you like a Chuck Norris joke? Press 1. For a personalized joke, press 2."
    user_input = gets.chomp
    if user_input == "1"
        get_random_joke

    elsif user_input == "2"
       #binding.pry 
        get_personalized_joke_from_api(current_first_name)
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
    
    if user_input == "1"
        random_joke_or_personalized_joke
    elsif user_input == "2"
        view_my_jokes # needs to be built
    elsif user_input == "3"
        view_my_friends_jokes
    elsif user_input == "4"
        exit
    else 
        puts "That was not a valid entry -- Chuck Norris wouldn't be proud. Please try again!"
    end
end

# def favorite_this_joke
    # takes argument of random_joke OR personalized_joke 
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

# def view_my_friends_jokes
# puts "Please enter your friends' username"
# friends_username = gets.chomp
# if friends_username = User.find_by(username: friends_username)
#     return jokes that belong to that user
# elseif friends_username == exit 
# exit
# else puts "Sorry, that username may not exist. Check your spelling and try again!"
#     puts "" 
#     puts ""
#     puts "If you spell Chuck Norris wrong on Google it doesn't say, 'Did you mean Chuck Norris?' It simply replies, 'Run while you still have the chance.'"

    

