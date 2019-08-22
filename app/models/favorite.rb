class Favorite < ActiveRecord::Base
    
    ActiveRecord::Base.logger = nil

    belongs_to :users
    belongs_to :jokes

def self.favorite_a_joke(user)
    Favorite.create(username_id: user.id,  jokes_id: Joke.last.id)
    puts "Glad you approved of Chuck, saving to my favs"
    puts ""
    main_menu(user)
end

def self.view_my_favorite_jokes(user)
        favorite_jokes_match = Favorite.where(username_id: user.id)
        favorite_jokes_ids = favorite_jokes_match.collect {|joke_obj| joke_obj.jokes_id}
        favorite_jokes_objects = Joke.where(id: favorite_jokes_ids)
        print "\e[2J\e[f"
        puts "These are your favorite jokes:"
        puts ""
        favorite_jokes_content = favorite_jokes_objects.collect {|joke| joke.content}
        favorite_jokes_content.each {|joke| puts joke}
        puts ""
        main_menu(user)
end 

def self.find_my_friends_jokes(user)
    puts "Please enter your friends' username"
    friends_username = gets.chomp
    friends_object = User.find_by username: friends_username
    if !friends_object.blank?
        favorite_jokes_match = Favorite.where(username_id: friends_object.id)
        favorite_jokes_ids = favorite_jokes_match.collect {|joke_obj| joke_obj.jokes_id}
        favorite_jokes_objects = Joke.where(id: favorite_jokes_ids)
        print "\e[2J\e[f"
        puts "These are #{friends_username}'s favorite jokes:"
        puts ""
        favorite_jokes_content = favorite_jokes_objects.collect {|joke| joke.content}
        favorite_jokes_content.each {|joke| puts joke}
        puts ""
        main_menu(user)
    else
        puts "Username not found"
        main_menu(user)
    end
end

end

# class Favorite < ActiveRecord::Base
#     belongs_to :users
#     belongs_to :jokes

#     def self.favorite_a_joke(user) #when we favorite, return to main menu
#         Favorite.create(username_id: user.id,  jokes_id: Joke.last.id)
#         main_menu
#     end

#     def self.view_my_favorite_jokes(user) #
#         # all_my_faves = Favorites.find_by username: user.username
#         user_faves = Favorites.find_by user.id == favorites.username_id
#         binding.pry

#         if all_my_faves.length && user_faves

#         # Favorite.find_by username_id: user.id 
#             puts "Here are your favorite jokes!"
#             puts ""
#             puts "Speaking of favorites..."
#             puts "Chuck Norris doesn't have a favorite football team. Football teams have favorite Chuck Norris roundhouse kicks."
#             main_menu(user)
#         else
#             puts "Username not found"
#             main_menu(user)
#             binding.pry
#         end
#     end
# end 
