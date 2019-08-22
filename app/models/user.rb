    class User < ActiveRecord::Base
        has_many :favorites
        has_many :jokes, through: :favorites
    
        def self.find_or_create_user_query(username, first_name)
            User.find_or_create_by(username: username, first_name: first_name)
        end
    end






