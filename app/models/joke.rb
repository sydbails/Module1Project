class Joke < ActiveRecord::Base

    ActiveRecord::Base.logger = nil

    has_many :favorites
    has_many :users, through: :favorites

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

    
end
