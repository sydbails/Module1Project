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
    categories = ["animal", "career", "celebrity", "dev", "explicit", "fashion", "food", "history", "money", 
    "movie", "music", "political", "religion", "science", "sport", "travel"]
    puts "" 
    puts "Please type in a selection from one of the following categories: 
    animal, career, celebrity, dev, explicit, fashion, food, history, money, 
    movie, music, political, religion, science, sport, or travel."
    puts ""
    user_input = gets.chomp
    if user_input == "flatiron school"
        puts "HAAAAYYYYYYY VANESSA"
    elsif user_input == "Shreveport"
        puts ""
        puts "Did you know Shreveport has a population of 6? We didn't either."
        puts ""

    elsif user_input == 'exit'
            exit_now
    elsif categories.include? user_input
        get_random_joke_by_category_from_api(user_input, user)
    else 
        puts ""
        puts "Sorry, Chuck Norris has no clue what you've entered. Try again."
        puts ""
        get_random_joke(user)
    end
end

def random_joke_or_personalized_joke(user)
    puts ""
    puts "What kind of joke would you like?"
    puts ""
    puts "(1) Random joke"
    puts "(2) Personalized joke"
    puts "(3) Get the Chuck out of here!"
    puts ""
    user_input = gets.chomp
    if user_input == "3"
        exit
    elsif user_input == "exit"
        exit
    elsif user_input == "1"
        get_random_joke(user)

    elsif user_input == "2"
        get_personalized_joke_from_api(user)
    else 
        puts "Invalid entry, please try again!" 
        random_joke_or_personalized_joke(user)
    end
end


def main_menu(user)
    puts "Enter a number that coincides with the menu selection."
    puts ""
    puts "(1) Get a Joke"
    puts "(2) View My Favorites"
    puts "(3) View My Pal's Favorites"
    puts "(4) View My Enemy's Favorites"
    puts "(5) Settings"
    puts "(6) Get the Chuck Out of Here!"
    puts ""
    user_input = gets.chomp
    
    if user_input == "1"
        random_joke_or_personalized_joke(user)
    elsif user_input == "2"
        Favorite.view_my_favorite_jokes(user)
    elsif user_input == "3"
        Favorite.find_my_friends_jokes(user)
    elsif user_input == "4"
        Favorite.find_my_enemies_jokes(user)
    elsif user_input == "5"
        settings(user)
    elsif user_input == "6"
        exit
    elsif user_input == "exit"
        exit
    else 
        puts "That was not a valid entry -- Chuck Norris wouldn't be proud. Please try again!"
        puts ""
        main_menu(user)
    end
end

def whats_next_after_joke_is_told(user)
    puts "That was a kneeslapper! What's next for you?"
    puts ""
    puts "(1) Main Menu"
    puts "(2) Add to My Favorites"
    puts "(3) Get Another Joke"
    puts "(4) Get the Chuck out of here!"
    puts ""
    # puts "Press 1 for 'main menu' , 2 to 'favorite' or 3 for another joke. Type 'exit' to get out of here!"
    # puts ""
    user_input = gets.chomp
    
    if user_input == '4'
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
    puts ""
    puts "What would you like to do?"
        puts "(1) Change your username"
        puts "(2) Return to the main menu"
        puts "(3) Get the Chuck out of here!"
        puts ""
        # Press 1 to change your username, or press 2 to return to the main menu."
        user_input = gets.chomp
    if user_input == "3"
        exit
    elsif user_input == "exit"
        exit
    elsif user_input == "1"
        User.change_your_username(user)
    elsif user_input == "2"
        main_menu(user)
    else
        puts "Invalid entry. Chuck is disgusted. Try again!"
    end
end


