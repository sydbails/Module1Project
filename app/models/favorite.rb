class Favorite < ActiveRecord::Base
    
    ActiveRecord::Base.logger = nil

    belongs_to :users
    belongs_to :jokes

    def self.favorite_a_joke(user)
        Favorite.create(username_id: user.id,  jokes_id: Joke.last.id)
        puts ""
        puts "This joke has been saved to your favorites. Go forth and be funny."
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
        puts ""
        puts "Please enter your pals' username"
        friends_username = gets.chomp
        friends_object = User.find_by username: friends_username
        if friends_username == "exit"
            exit
        elsif !friends_object.blank?
            favorite_jokes_match = Favorite.where(username_id: friends_object.id)
            favorite_jokes_ids = favorite_jokes_match.collect {|joke_obj| joke_obj.jokes_id}
            favorite_jokes_objects = Joke.where(id: favorite_jokes_ids)
            if favorite_jokes_objects.blank?
                puts ""
                puts "Sorry, your pal, '#{friends_username}', hasn't favorited any jokes. They're LAME."
                puts ""
                main_menu(user)
            else
                puts ""
                puts "These are #{friends_username}'s favorite jokes:"
                puts ""
                favorite_jokes_content = favorite_jokes_objects.collect {|joke| joke.content}
                favorite_jokes_content.each {|joke| puts joke}
            end
            puts ""
            main_menu(user)  
        else
            puts ""
            puts "Sorry, your pal's username, '#{friends_username}', may not exist. Check your spelling and try again!"
            puts "" 
            puts "*BTW - If you spell Chuck Norris wrong on Google it doesn't say, 'Did you mean Chuck Norris?' It simply replies, 'Run while you still have the chance.'*"
            puts ""
            self.find_my_friends_jokes(user)
        end
    end

    def self.find_my_enemies_jokes(user)
        puts ""
        puts "Please enter your enemies' username"
        enemies_username = gets.chomp
        enemies_object = User.find_by username: enemies_username
        if enemies_username == "exit"
            exit
        elsif !enemies_object.blank?
            favorite_jokes_match = Favorite.where(username_id: enemies_object.id)
            favorite_jokes_ids = favorite_jokes_match.collect {|joke_obj| joke_obj.jokes_id}
            favorite_jokes_objects = Joke.where(id: favorite_jokes_ids)
            if favorite_jokes_objects.blank?
                puts ""
                puts "Sorry, your enemy, '#{enemies_username}', hasn't favorited any jokes. They're LAME."
                puts ""
                main_menu(user)
            else
                puts ""
                puts "These are #{enemies_username}'s favorite jokes:"
                puts ""
                puts "Steal them. You're the funnier person anyway!"
                puts ""
                favorite_jokes_content = favorite_jokes_objects.collect {|joke| joke.content}
                favorite_jokes_content.each {|joke| puts joke}
                main_menu(user)
            end

        else
            puts ""
            puts "Sorry, your enemies' username, '#{enemies_username}', may not exist. Who cares? They're your ENEMY!"
            puts "" 
            puts "*BTW - If you spell Chuck Norris wrong on Google it doesn't say, 'Did you mean Chuck Norris?' It simply replies, 'Run while you still have the chance.'*"
            puts ""
            self.find_my_enemies_jokes(user)
        end
    end

end
