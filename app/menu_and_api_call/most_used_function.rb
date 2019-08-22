# ends program whenever user needs to leave
def exit_now
    exit
end

def get_personalized_joke_from_api(user)
    # Retrieve a random personalized chuck joke using specified name
    # https://api.chucknorris.io/jokes/random?name=Bob

    url_with_name = "https://api.chucknorris.io/jokes/random?name=#{user.first_name}"

    joke_data = RestClient.get(url_with_name) 
    joke_hash = JSON.parse(joke_data)
    personalized_joke = joke_hash["value"]
    
    Joke.create(content: personalized_joke)
    
    puts ""
    puts personalized_joke
    puts ""
    whats_next_after_joke_is_told(user)
end

def get_random_joke_by_category_from_api(category, user)
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
    puts ""
    whats_next_after_joke_is_told(user)
     
end


def get_random_joke(user)
    puts "Please type in a selection from one of the following categories: 
    animal, career, celebrity, dev, explicit, fashion, food, history, money, 
    movie, music, political, religion, science, sport, or travel."
    puts ""
    user_input = gets.chomp
    if user_input == 'exit'
        exit_now
    else 
        get_random_joke_by_category_from_api(user_input, user)
    end
end

def random_joke_or_personalized_joke(user)
    puts "Would you like a Chuck Norris joke? Press 1. For a personalized joke, press 2."
    user_input = gets.chomp
    if user_input == "1"
        get_random_joke(user)

    elsif user_input == "2"
        get_personalized_joke_from_api(user)
    else 
        puts "Invalid entry, please try again!" 
        random_joke_or_personalized_joke(user)
    end
end


def main_menu(user)
    #user_input = gets.chomp you want to collect this information after users sees selection
    puts "Please select number that coincides with menu option."
    puts ""
    puts "(1) Find joke"
    puts "(2) View my favorited jokes"
    puts "(3) View my pal's favorited jokes"
    puts "(4) Settings"
    puts "(5) Exit"
    puts ""
    user_input = gets.chomp
    
    if user_input == "1"
        random_joke_or_personalized_joke(user)
    elsif user_input == "2"
        Favorite.view_my_favorite_jokes(user)
        puts "number 2 - what's next after joke is told WORKS"
    elsif user_input == "3"
        Favorite.find_my_friends_jokes(user)
    elsif user_input == "4"
        settings(user)
    elsif user_input == "5"
        exit
    else 
        puts "That was not a valid entry -- Chuck Norris wouldn't be proud. Please try again!"
        puts ""
        main_menu(user)
    end
end

def whats_next_after_joke_is_told(user)
    puts "That was a kneeslapper! What's next for you? Press 1 for 'main menu' , 2 to 'favorite' or 3 for another joke. Type 'exit' to get out of here!"
    user_input = gets.chomp
    
    if user_input == 'exit'
        exit
    elsif 
        user_input == "1"
        main_menu(user)
    elsif 
        user_input == "2"
        Favorite.favorite_a_joke(user)
    elsif 
        user_input == "3"
        random_joke_or_personalized_joke(user)
    else 
        puts "That was not a valid entry -- Chuck Norris wouldn't be proud. Please try again!" 
        whats_next_after_joke_is_told(user)
    end
end

def settings(user)
    puts "What would you like to do? Press 1 to change your username, or press 2 to return to the main menu."
        user_input = gets.chomp
    if user_input == "1"
        User.change_your_username(user)
    elsif user_input == "2"
        main_menu(user)
    else
        puts "Invalid entry. Chuck is disgusted. Try again!"
    end
end


# def view_my_friends_jokes
# puts "Please enter your friends' user.username"
# friends_user.username = gets.chomp
# if friends_user.username = User.find_by(user.username: friends_user.username)
#     return jokes that belong to that user
# elseif friends_user.username == exit 
# exit
# else puts "Sorry, that  may not exist. Check your spelling and try again!"
#     puts "" 
#     puts ""
#     puts "If you spell Chuck Norris wrong on Google it doesn't say, 'Did you mean Chuck Norris?' It simply replies, 'Run while you still have the chance.'"

    

