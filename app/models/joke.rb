class Joke < ActiveRecord::Base

    ActiveRecord::Base.logger = nil
    
    has_many :favorites
    has_many :users, through: :favorites
end
