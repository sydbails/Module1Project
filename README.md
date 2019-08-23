# CHUCK ... YOU

## A Chuck Norris Joke Generator the man himself would be proud of.

The year is 2006. You just finished wrapping up the season finale of the Hills, and decided to turn on your Zune player with your Skullcandy headphones in ear to listen to the hottest tunes and cruise the internet. You check your top 8 on Myspace, and see your friend left a “funny” public comment with a Chuck Norris joke. You can do way better than that.

In comes Chuck You, a funny machine by Syd (@sydbails) and Hemesh (@hemeshvpatel) to spit out random and custom Chuck Norris jokes that will keep you laughing for at least a few seconds, and will make you queen of the Myspace jokes. Find a great joke you want to relay to your friends later that night at Jamba Juice? Favorite it! A quick menu option will help you find the jokes you just didn’t want to forget. Your crush from 5th period favorited a joke and you want to do a little innocent stalking? Pop in their username and get the jokes they like!

## Down to Business

### MVP - Minimum Viable Product
In order for our program to work, as well as to pass our Module 1 Project requirements, we needed a few of the following:

- CRUD functionality for our user
- Database storage
- Many to many through relationships between classes

Our long term goals were to include:
- Easy access to/from API
- A favorites join table that was accessible
- An appealing and aesthetic CLI

### Functions of Chuck You program:
- Create/change your username
- Retrieve random Chuck Norris joke
- Retrieve personalized Chuck Norris joke, with user’s name
- Save joke to ‘favorites’ folder
- View jokes others’ have saved to their favorites’ folder

### API
https://api.chucknorris.io/#!

### Gems
gem "sinatra-activerecord"
gem 'activerecord', "~>5.2.3"
gem 'sqlite3', '~>1.3.6'
gem "rake", "12.3.2"
 
gem "pry"
gem "require_all"
gem "rest-client"

### Walkthrough:

- Create a username including your first name

- Choose whether you’d like a random joke or personalized joke

- Favorite that joke or get another joke.

- Return to the main menu.

- View your friends’ jokes by entering their username.

- Change your username in the Settings category on the menu

- Thanks for using Chuck You!

Syd & Hemesh

