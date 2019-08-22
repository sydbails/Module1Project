    class User < ActiveRecord::Base

        ActiveRecord::Base.logger = nil
       
        has_many :favorites
        has_many :jokes, through: :favorites
    
        def self.find_or_create_user_query(username, first_name)
            User.find_or_create_by(username: username, first_name: first_name)
        end

        def self.change_your_username(user)
            puts "What would you like to change your username to?"
            user_input = gets.chomp

            new_username_object = User.find_by(username: user_input)
             
            if new_username_object.blank?
                user.username = user_input
                user.save
                puts "Sahweet, that username is available! Your username is now '#{user.username}'!'"
                puts ""
                main_menu(user)
            else
                puts "ChuckOH, that username is already taken. Please try again"
                change_your_username(user)
            end
        end
    end






