class Favorite < ActiveRecord::Base
    belongs_to :users
    belongs_to :jokes

def self.favorite_a_joke(user)
    Favorite.create(username_id: user.id,  jokes_id: Joke.last.id)
    binding.pry
end

def self.view_my_favorite_jokes(user)
    if !User.find_by username: user.username == nil
        puts "Username found"
        Favorite.find_by username_id: user.id 
        main_menu(user)
    else
        puts "Username not found"
        main_menu(user)
    end
end 

# def find_my_friends_

# end
end